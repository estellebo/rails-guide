require 'date'

class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :destroy]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.offer = Offer.find(params[:offer_id])
    if @booking.date < DateTime.now
      redirect_to offer_path(@booking.offer)
      flash[:notice] = "Cette date n'est pas valide"
    elsif @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to offer_path(@booking.offer)
      flash[:notice] = "Cette date n'est pas disponible"
    end
    authorize @booking
  end

  def destroy
    @booking.destroy

    redirect_to dashboard_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
