class RemoveNameKanjiFromAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :addresses, :name_kanji, :string
    remove_column :addresses, :name_kana, :string
  end
end
