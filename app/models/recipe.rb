class Recipe < ApplicationRecord
    has_many :lists
    has_many :ingredients, through: :lists
    belongs_to :user

    validates :dish_name, uniqueness: true

   
    
end
