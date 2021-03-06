class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    review = Review.new(params_review)
    review.restaurant = Restaurant.find(params[:restaurant_id])
    review.save
    redirect_to restaurant_path(review.restaurant)
  end

  private

  def params_review
    params.require(:review).permit(:content, :rating)
  end
end
