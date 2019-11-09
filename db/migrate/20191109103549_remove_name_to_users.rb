class RemoveNameToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name_kanji, :string
    remove_column :users, :name_kana, :string
  end
end