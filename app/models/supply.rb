class Supply < Consumable
  belongs_to :pantry
  has_many :ingredients # should this be changed to just a reference in Ingredient???
end
