class HotelsController < ApplicationController

  def index
    @hotels = Hotel.all
  end

  def new
    @hotel = Hotel.new
  end

  def show
    @hotel = Hotel.find params[:id]
  end

  def create
  hotel = Hotel.create hotel_params
  redirect_to hotel # /hotel/:some_id i.e. the show page
  end

  def edit
      @hotel = Hotel.find params[:id]
  end

  def update
    hotel = Hotel.find params[:id]
    hotel.update hotel_params
    redirect_to hotel_path(hotel.id)
  end

  def destroy
  hotel = Hotel.find params[:id]
  hotel.destroy
  redirect_to hotels_path
  end

private
def hotel_params
  params.require(:hotel).permit(:name, :image, :rooms, :price, :amenity)
end
end
