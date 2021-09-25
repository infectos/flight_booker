class Flight < ApplicationRecord
  belongs_to :origin, class_name: "Airport"
  belongs_to :destination, class_name: "Airport"

  has_many :bookings, dependent: :destroy
  has_many :passengers, through: :bookings
  
  def text
    "#{date.to_s(:date)} #{time.to_s(:time)} from #{origin.code} to #{destination.code}"
  end
end
