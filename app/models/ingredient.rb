class Ingredient < Consumable
  belongs_to :recipe
  belongs_to :supply
end
