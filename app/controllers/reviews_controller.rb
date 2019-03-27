class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params[:review_params])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to @restaurants
    else
      render :new
    end
  end


private

  def review_params
    params.require(:reviews).permit(:content, :rating, :restaurant_id)
  end

end
