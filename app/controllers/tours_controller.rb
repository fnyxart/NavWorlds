class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
    @booking = Booking.new
  end

  def new
    @tour = Tour.new
  end

  def create
    # @user = current_user <- replace line below with this after devise is up & running
    # @user = User.find(5)
    @user = current_user
    @tour = Tour.new(tour_params)
    @tour.user = @user
    if @tour.save
      # change 'tours_path' to 'my tours' later?
      redirect_to tours_path
    else
      render :new
    end
  end

  private

  def tour_params
    params.require(:tour).permit(:name, :description, :photo_url, :price)
  end
end
