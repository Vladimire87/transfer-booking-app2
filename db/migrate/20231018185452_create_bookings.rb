class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.string :pick_up
      t.string :drop_off
      t.date :booking_date
      t.time :booking_time

      t.timestamps
    end
  end
end
