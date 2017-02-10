class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @new_restaurant = Restaurant.new(restaurant_params)
    @new_restaurant.shop = Shop.find(1)
    @new_restaurant.save
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:title)
  end
end
