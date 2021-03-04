class Recipe < ApplicationRecord
  belongs_to :user
  has_many :ingredients, dependent: :destroy

  def total_cost
    self.ingredients.map{ | ing | ing.quantity * ing. cost_per_unit } .reduce(&:+).round(2)
  end

end
