class ChangeDatatypePostalCordOfAddress < ActiveRecord::Migration[5.2]
  def change
    change_column :addresses, :postal_cord, :integer
    change_column :addresses, :house_number, :integer
    change_column :addresses, :phone_number, :integer
  end
end
