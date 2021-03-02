class User < ApplicationRecord
    has_many :recipes
    has_one :pantry
end
