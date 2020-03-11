class AddMeetingPlaceToOffers < ActiveRecord::Migration[5.2]
  def change
    add_column :offers, :meeting_place, :string
  end
end
