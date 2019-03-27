class RestaurantsController < ApplicationController
before_action :find_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(set_params)
    @restaurant.save
    redirect_to @restaurants
  end

  def edit

  end

  def destroy
    @restaurant.destroy
    redirect_to @restaurants
  end

private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def set_params
    params.require(:restaurants).permit(:name, :address, :phone_numer, :category)
  end

end
