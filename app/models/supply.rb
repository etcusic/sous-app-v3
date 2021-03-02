class Supply < ApplicationRecord
  belongs_to :pantry
  has_many :ingredients
end
