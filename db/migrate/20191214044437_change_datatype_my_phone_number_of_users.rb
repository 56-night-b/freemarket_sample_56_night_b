class ChangeDatatypeMyPhoneNumberOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :my_phone_number, :bigint, limit: 11
    change_column :users, :image, :string
    change_column :users, :introduction, :string
  end
end
