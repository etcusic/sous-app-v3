class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    has_one :pantry, dependent: :destroy
end
