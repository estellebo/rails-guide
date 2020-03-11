class Offer < ApplicationRecord
  # geocoded_by :meeting_place
  # after_validation :geocode, if: :will_save_change_to_meeting_place?

  belongs_to :user
  has_one :booking
  has_one_attached :photo

  validates :user, presence: true
  validates :meeting_place, presence: true
  validates :price, presence: true
  validates :content, presence: true
  validates :title, presence: true
  validates :city, presence: true
  validates :duration_in_hours, presence: true
end
