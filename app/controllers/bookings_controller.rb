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
      redirect_to users_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @gear = @booking.gear
  end

  def show
    @gear = Gear.find(params[:gear_id])
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

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    flash[:success] = "Booking successfully removed, maybe another time !"
    redirect_to users_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
