class ListsController < ApplicationController


  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    # @restaurant = Restaurant.find(params[:id])
    # @review = Review.new
  end

  def new
    @list = List.new
    # @restaurant = Restaurant.new
  end

  def create
    @list = List.new(list_params)
      if @list.save
        redirect_to @list
      else render :new, status: :unprocessable_entity
      end
  end

    # @restaurant = Restaurant.new(restaurant_params)
    # if @restaurant.save
    #   redirect_to @restaurant
    # else
    #   render :new, status: :unprocessable_entity
    # end


# def edit
#   # @restaurant = Restaurant.find(params[:id])
# end

# def update
#   # @restaurant = Restaurant.find(params[:id])
#   # @restaurant.update(restaurant_params)
#   # redirect_to restaurant_path(@restaurant)
# end

# def destroy
# #   @restaurant = Restaurant.find(params[:id])
# #   @restaurant.destroy
# #   redirect_to restaurants_path
# # end

private

  def list_params
    params.require(:list).permit(:name)
  end
end
