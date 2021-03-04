class Pantry < ApplicationRecord
  belongs_to :user
  has_many :consumables, dependent: :destroy
  alias_attribute :ingredients, :consumables

  # should this be in a module? - both recipe and pantry use this
  def total_cost
    self.ingredients.map{ | ing | ing.cost_per_unit * ing.quantity } .reduce(&:+).round(2)
  end

  # inefficient and belongs in module to share between recipe and pantry? 
  # also => should recipe ingredients belong to pantry ingredients - or both belong to a parent/root ingredient??
  def available_recipes
    self.user.recipes.select do |recipe|
      recipe.ingredients.all?{|ing| ing.quantity <= self.ingredients.find_by(name: ing.name).quantity}
    end
  end

end
