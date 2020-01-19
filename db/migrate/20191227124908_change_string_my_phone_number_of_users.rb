class ChangeStringMyPhoneNumberOfUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :my_phone_number, :string
  end
end
