class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
  end

  def show
  end

  def create
  end

  def delete
  end
end
