class AddBrandToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :brand, :integer
  end
end
