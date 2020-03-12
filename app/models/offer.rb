class Offer < ApplicationRecord
  geocoded_by :meeting_place
  after_validation :geocode, if: :will_save_change_to_meeting_place?

  include PgSearch::Model
  pg_search_scope :search_by_city_and_meeting_place,
    against: [ :city, :meeting_place ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  belongs_to :user
  has_one :booking

  has_one_attached :photo
  # validates :photo, attached: true

  # validates :user, presence: true
  # validates :meeting_place, presence: true
  # validates :price, presence: true
  # validates :content, presence: true
  # validates :title, presence: true
  # validates :city, presence: true
  # validates :duration_in_hours, presence: true
end
