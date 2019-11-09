class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :famliy_name_kanji, :string
    add_column :users, :firstname_name_kanji, :string
    add_column :users, :famliy_name_kana, :string
    add_column :users, :firstname_name_kana, :string
  end
end
