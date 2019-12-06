class AddImgUrlToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :img_url, :string
    add_column :users, :self_description, :string 
  end
end
