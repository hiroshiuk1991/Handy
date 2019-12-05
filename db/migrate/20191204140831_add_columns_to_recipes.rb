class AddColumnsToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :description, :string
    add_column :recipes, :instructions, :string
    add_column :recipes, :dish_ingredients, :string
  end
end
