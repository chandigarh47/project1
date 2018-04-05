class ReviewsController < ApplicationController



  def create
    hotel = Hotel.find params[:hotel_id]
    review = hotel.reviews.create review_params
    @current_user.reviews << review
    redirect_back :fallback_location => root_path
  end

  def edit
    @review = Review.find params[:id]
  end

  def update
    review = Review.find params[:id]
    review.update review_params
    redirect_to hotel_path(review.hotel_id)
  end

  def destroy
    review = Review.find params[:id]
    review.destroy
    redirect_to reviews_path
  end

  private
  def review_params
  params.require(:review).permit(:content)
  end

end
