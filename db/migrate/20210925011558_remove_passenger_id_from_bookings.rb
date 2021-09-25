class RemovePassengerIdFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_reference :bookings, :passenger, null: false, foreign_key: true
  end
end
