class ChangeStrinExpirationDateOfCard < ActiveRecord::Migration[5.2]
  def change
    change_column :cards, :expiration_date, :string
  end
end
