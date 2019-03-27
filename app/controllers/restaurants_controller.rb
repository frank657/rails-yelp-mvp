class RestaurantsController < ApplicationController
before_action :find_restaurant, only: [:show, :reviews]
before_action :user_params, only: [:create]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(user_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def reviews
    @reviews = @restaurant.reviews
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def user_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
