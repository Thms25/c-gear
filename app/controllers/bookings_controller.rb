class BookingsController < ApplicationController
  def new
    @gear = Gear.find(params[:gear_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(start_date: booking_params[:start_date].split(" to ")[0], end_date: booking_params[:start_date].split(" to ")[1] )
    @gear = Gear.find(params[:gear_id])
    @booking.gear = @gear
    @booking.user = current_user
    if @booking.save
      redirect_to gears_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @gear = @booking.gear
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(start_date: booking_params[:start_date].split(" to ")[0], end_date: booking_params[:start_date].split(" to ")[1] )
      redirect_to gears_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
