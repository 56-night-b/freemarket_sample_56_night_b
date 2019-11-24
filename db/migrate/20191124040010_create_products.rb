class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer   :value, null: false
      t.string    :name, null: false
      t.integer   :product_explanation
      t.integer   :category, null: false
      t.string    :producut_situation
      t.integer   :postage_burden, null: false
      t.integer   :shipping_origin, null: false
      t.integer   :arrival_days
      t.timestamps
    end
  end
end
