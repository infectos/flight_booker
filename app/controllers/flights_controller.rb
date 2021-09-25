class FlightsController < ApplicationController
  def index
    if params[:flight]
      @flight = Flight.new(flight_params)
      @founded_flights = Flight.where(flight_params)
    else
      @flight = Flight.new
    end

  end

  private
  
  def flight_params
    params.require(:flight).permit(:origin_id, :destination_id, :date)
  end
end
