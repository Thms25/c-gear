class BookingsController < ApplicationController
  def new
    @gear = Gear.find(params[:gear_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @gear = Gear.find(params[:gear_id])
    @booking.gear = @gear
    @booking.user_id = current_user.id
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
    # @booking.update(booking_params)
    # redirect_to gears_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
