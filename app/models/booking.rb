class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :user, uniqueness: { scope: date }
  validates :offer, presence: true
  validates :date, presence: true
end
