class BookingsController < ApplicationController

  def index
    @bookings = Booking.all

  end

  def new
    @booking = Booking.new
  end

  def show
    @booking = Booking.find params[:id]
  end

  def create
    hotel = Hotel.find params[:hotel_id]
    booking = hotel.bookings.create booking_params
    redirect_to booking
  end

  def edit
    @booking = Booking.find params[:id]
  end

  def update
    booking = Booking.find params[:id]
    booking.update booking_params
    redirect_to booking_path(booking.id)
  end

  def destroy
    booking = Booking.find params[:id]
    booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :checkin, :checkout, :room_type, :price)
  end
end
