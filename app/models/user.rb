class User < ApplicationRecord
    has_many :recipes, dependent: :destroy
    has_many :ingredients, through: :recipes
    
    validates :username, uniqueness: true
    validates :email, uniqueness: true

   

    #validates :password, uniqueness: true

    has_secure_password

    
    def full_name
        full_name = self.first_name + " " + self.last_name
    end 
    def my_recipes
        self.recipes 
    end

    # def authenticate(password)
    #     # salt = password_digest[0..28]
    #     # hashed = BCrypt::Engine::hash_secret(password, salt)
    #     # return nil unless  == self.password
    # end 

end
