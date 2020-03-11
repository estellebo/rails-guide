class RemoveAddressFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :address, :string
  end
end
