class ToursController < ApplicationController

  def index
    @tours = Tour.all
    if params[:query].present?
      @tours = Tour.global_search(params[:query])
    else
      @tours = Tour.all
    end
  end

  def show
    @tour = Tour.find(params[:id])
    @booking = Booking.new
  end

  def new
    @tour = Tour.new
  end

  def create
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
