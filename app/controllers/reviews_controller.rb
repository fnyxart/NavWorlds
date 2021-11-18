class ReviewsController < ApplicationController
  before_action :booking_id, only: %i[new create]

  def new
    @review = Review.new

  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    if @review.save
      redirect_to tour_path(@booking.tour)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def booking_id
    @booking = Booking.find(params[:booking_id])
  end
end
