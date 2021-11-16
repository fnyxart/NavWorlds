class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def show
    @tour = Tour.find(params[:id])
  end

  # def new
  #   @tour = Tour.new
  # end

  # def create
  #   @user = User.find(params[:user_id])
  #   @tour = Tour.new(tour_params)
  #   @tour.user = @user
  #   if @tour.save
  #     redirect_to @
  #   else
  #     render :new
  #   end
  # end

  private

  def tour_params
    params.require(:tour).permit(:name, :description, :photo_url, :price)
  end
end
