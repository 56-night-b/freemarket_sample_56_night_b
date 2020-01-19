class AddVarietyUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :postal_cord, :integer
    add_column :users, :prefectures, :string
    add_column :users, :municipalities, :string
    add_column :users, :house_number, :string
    add_column :users, :building_name, :string
    add_column :users, :phone_number, :string
  end
end
