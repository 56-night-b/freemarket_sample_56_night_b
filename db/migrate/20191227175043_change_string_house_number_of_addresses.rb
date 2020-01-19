class ChangeStringHouseNumberOfAddresses < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses, :house_number, :string
  end
end
