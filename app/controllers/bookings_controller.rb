class BookingsController < ApplicationController
  before_action :booking_id, only: %i[destroy]

  def index
    # Show all bookings that belong to current user
    @bookings = Booking.where(user: current_user)
  end

  def create
    @user = current_user
    @tour = Tour.find(params[:tour_id])
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.tour = @tour
    if @booking.save!
      redirect_to bookings_path
    else
      render 'tours/show'
    end
  end

  def destroy
    @booking.destroy
    redirect_to tours_path
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_id
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:dates)
  end
end
