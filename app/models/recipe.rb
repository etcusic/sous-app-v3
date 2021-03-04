class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, dependent: :destroy
  accepts_nested_attributes_for :ingredients

  def total_cost
    self.ingredients.map{ | ing | ing.quantity * ing. cost_per_unit } .reduce(&:+).round(2)
  end

  def enough_in_pantry?
    pantry = self.user.pantry
    if self.ingredients.all?{|ing| ing.quantity <= pantry.ingredients.find_by(name: ing.name).quantity}
      # be more specific with how many portions of recipe can be made
      "(You have enough ingredients in the pantry for this recipe!)"
    else
      # be more specific with which ingredients need to be stocked
      "(Not enough ingredients in pantry for this recipe)"
    end
  end

end
