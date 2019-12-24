class RemoveExpirationDateToCards < ActiveRecord::Migration[5.2]
  def change
    remove_column :cards, :expiration_date_yy
    remove_column :cards, :expiration_date_mm
  end
end
