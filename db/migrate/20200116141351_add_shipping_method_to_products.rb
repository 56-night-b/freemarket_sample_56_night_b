class AddShippingMethodToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :shipping_method, :string
  end
end
