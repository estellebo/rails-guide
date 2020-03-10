class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :user, presence: true
  validates :offer, presence: true
  validates :date, presence: true, uniqueness: true
end
