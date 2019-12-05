class Recipe < ApplicationRecord
    has_many :lists
    has_many :ingredients, through: :lists
    belongs_to :user

    validates :dish_name, uniqueness: true

    def list_attributes=(lists_attributes)
        self.lists.destroy_all
        lists_attributes.values.each do |list_attributes|
            self.lists.build(list_attributes)
        end
    end
   
    
end
