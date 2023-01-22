class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
  end
end


private
def room_params
  params.require(:room).permit(:name, :address, :hotel_id)
end


