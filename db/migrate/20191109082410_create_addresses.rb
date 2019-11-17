class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :name_kanji,         null: false
      t.string :name_kana,         null: false
      t.string :postal_cord,         null: false
      t.string :prefectures,         null: false
      t.string :municipalities,         null: false
      t.string :house_number,         null: false
      t.string :building_name,         null: false
      t.string :phone_number,         null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
