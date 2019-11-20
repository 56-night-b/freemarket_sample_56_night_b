class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.integer :card_number,null: false
      t.string :expiration_date,null: false
      t.integer :securitycord,null: false
      t.timestamps
    end
  end
end
