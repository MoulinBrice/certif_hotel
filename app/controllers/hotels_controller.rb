class HotelsController < ApplicationController
  def index
    @hotel = Hotel.all
  end

  def show
    @hotel = Hotel.new()
  end
end
