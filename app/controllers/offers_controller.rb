require_relative '../models/booking'

class OffersController < ApplicationController
  before_action :find_offer, only: [:show, :edit, :destroy]

  def index
    @offers = policy_scope(Offer)
  end

  def show
    @booking = Booking.new
    @booking.offer = @offer
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
    authorize @offer
  end

  def edit

  end

  def update
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
    authorize @offer
  end

  def destroy
    @offer.destroy

    redirect_to dashboard_path
  end

  private

  def find_offer
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def offer_params
    params.require(:offer).permit(:price, :meeting_place, :content, :city, :title, :duration_in_hours)
  end
end
