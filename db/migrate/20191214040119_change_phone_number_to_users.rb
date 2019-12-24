class ChangePhoneNumberToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :phone_number, :my_phone_number
  end
end
