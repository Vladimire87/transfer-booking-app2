class Booking < ApplicationRecord
  validates :pick_up, :drop_off, :booking_date, :booking_time, presence: true
end
