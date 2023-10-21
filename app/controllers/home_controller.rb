class HomeController < ApplicationController
  def index
    @booking = Booking.new
    @bookings = Booking.all
  end
end
