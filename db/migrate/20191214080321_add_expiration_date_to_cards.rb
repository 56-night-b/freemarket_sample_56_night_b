class AddExpirationDateToCards < ActiveRecord::Migration[5.2]
  def change
    add_column :cards, :expiration_date, :integer
  end
end
