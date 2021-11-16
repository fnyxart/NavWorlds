class BookingsController < ApplicationController
  before_action :booking_id, only: :destroy

  def new
    @booking = Booking.new
  end

  def create
    @user = current_user
    @tour = Tour.find(params[:tour_id])
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.tour = @tour
    if booking.save!
      redirect_to tour_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to tours_path
  end

  private

  def booking_id
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:dates)
  end
end
