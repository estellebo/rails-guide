class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.integer :price
      t.string :meeting_place
      t.text :content
      t.string :city
      t.string :title
      t.integer :duration_in_hours
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
