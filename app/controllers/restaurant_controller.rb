class RestaurantController < ApplicationController
  before_action :set_restaurant, except: [:index, :new, :create]
  def index
    @restaurant = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(rest_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def rest_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
