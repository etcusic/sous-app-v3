class Pantry < ApplicationRecord
  belongs_to :user
  has_many :consumables, dependent: :destroy
  alias_attribute :ingredients, :consumables

end
