class AddName2ToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name_name_kanji, :string
    add_column :users, :first_name_name_kana, :string
  end
end
