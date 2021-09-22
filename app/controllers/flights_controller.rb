class FlightsController < ApplicationController
  def index
    @founded_flights = Flight.where(search_params)

  end

  def search_params
    params.permit(:origin, :destination, :date)
  end
end
