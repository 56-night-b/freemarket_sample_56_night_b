class CreateNices < ActiveRecord::Migration[5.2]
  def change
    create_table :nices do |t|
      t.integer :product_id
      t.integer :number

      t.timestamps
    end
  end
end
