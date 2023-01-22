class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def edit
    @booking = Booking.new
  end

  def create
    @room = room.find(params[:room_id])
    @booking = Booking.new(booking_params)
    if @booking.save!
    redirect_to root_path
    else
    render :new
    end
  end

  private
    def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :room_id, :user_id)
    end
end
