class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    has_many :ingredients, through: :recipes
    
    validates :username, uniqueness: true
    validates :email, uniqueness: true
    validates :password, uniqueness: true

    
    
    def full_name
        full_name = self.first_name + " " + self.last_name
    end 




    def my_recipes
        self.recipes 
    end 

end
