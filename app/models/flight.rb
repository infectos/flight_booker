class Flight < ApplicationRecord
  belongs_to :origin, class_name: "Airport"
  belongs_to :destination, class_name: "Airport"

  def text
    "#{date.to_s(:date)} #{time.to_s(:time)} from #{origin.code} to #{destination.code}"
  end
end
