class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.restaurant = Restaurant.find(params[:restaurant_id])
    @review.save

    # raise

    # redirect_to restaurant_path(@review.restaurant)
  end
end
