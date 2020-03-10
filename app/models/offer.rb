class Offer < ApplicationRecord
  belongs_to :user
  has_one :booking

  validates :user, presence: true
  validates :meeting_place, presence: true
  validates :price, presence: true
  validates :content, presence: true
  validates :title, presence: true
  validates :city, presence: true
  validates :duration_in_hours, presence: true
end
