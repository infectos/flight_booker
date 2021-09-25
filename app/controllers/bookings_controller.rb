class BookingsController < ApplicationController
  def new
    if params[:flight_id].empty?
      flash.alert = "You should pick the flight"
      redirect_back fallback_location: root_path
      return
    end

    @selected_flight = Flight.find(params[:flight_id])
    @booking = @selected_flight.bookings.build

    passengers_count = params[:passengers_count].to_i
    passengers_count.times { @booking.passengers.build }

  end

  def create
    @selected_flight = Flight.find(params[:booking][:flight_id])
    @booking = @selected_flight.bookings.build(booking_params)

    if @booking.save
      flash.notice = "Flight \"#{@selected_flight.text}\" successfully booked!"
      redirect_to @booking
    else
      render :new
    end

  end

  def show
    @booking = Booking.find(params[:id])
  end

  private
  def booking_params
    params.require(:booking).permit(passengers_attributes: [:name, :email])
  end
end
