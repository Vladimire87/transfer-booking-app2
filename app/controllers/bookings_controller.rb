class BookingsController < ApplicationController
  def create
    @booking = Booking.new bookings_params
    @bookings = Booking.all

    if @booking.save
      flash[:success] = 'Booking created'
      redirect_to root_path
    else
      render 'home/index', status: :unprocessable_entity
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:pick_up, :drop_off, :booking_date, :booking_time)
  end
end
