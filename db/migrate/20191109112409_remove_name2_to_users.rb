class RemoveName2ToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :firstname_name_kanji, :string
    remove_column :users, :firstname_name_kana, :string
  end
end
