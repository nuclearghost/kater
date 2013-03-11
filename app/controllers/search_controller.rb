class SearchController < ApplicationController

  # GET /search.json
  def index

    @input = params[:term]

    @restaurants = Restaurant.where("name LIKE ?", "#{@input}%")

    @dishes = Dish.where("name LIKE ?", "#{@input}%")

    @json_return = Array.new

    @restaurants.each do |restaurant|
      @json_return.push({"label" => restaurant.name, "value" => restaurant.name, "url" => restaurant_url(restaurant.id)})
    end

    @dishes.each do |dish|
      @json_return.push({"label" => dish.name, "value" => dish.name, "url" => dish_url(dish.id)})
    end

    respond_to do |format|
      format.json { render json: @json_return }
    end
  end

end