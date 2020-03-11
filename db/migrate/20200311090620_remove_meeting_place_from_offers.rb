class RemoveMeetingPlaceFromOffers < ActiveRecord::Migration[5.2]
  def change
    remove_column :offers, :meeting_place, :string
  end
end
