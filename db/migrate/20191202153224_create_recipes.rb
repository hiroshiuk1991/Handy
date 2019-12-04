class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :dish_name

      t.timestamps
    end
  end
end
