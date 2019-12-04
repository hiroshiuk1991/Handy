class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    has_many :ingredients, through: :recipes
    
    validates :username, uniqueness: true
    
    
    def full_name
        full_name = self.first_name + " " + self.last_name
    end 


end
