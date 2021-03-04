class Pantry < ApplicationRecord
  belongs_to :user
  has_many :consumables, dependent: :destroy
  alias_attribute :ingredients, :consumables

  # should this be in a module? - both recipe and pantry use this
  def total_cost
    self.ingredients.map{ | ing | ing.cost_per_unit * ing.quantity } .reduce(&:+).round(2)
  end

end
