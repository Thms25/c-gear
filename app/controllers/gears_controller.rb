class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]

  def index
    @gears = Gear.all
    @users = User.all
    @users_with_gear = @users.geocoded.select do |user|
      user unless user.gears.empty?
    end
    @markers = @users_with_gear.map do |user|
      gear = user.gears.first unless user.gears.empty?
      marker = {
        lat: user.latitude,
        lng: user.longitude,
      }
      if gear.present?
        marker[:preview_html] = render_to_string(partial: "preview", locals: {gear: gear})
      end
      marker
    end
  end

  def show
    @user = @gear.user
    @markers = [{
      lat: @user.latitude,
      lng: @user.longitude,
      preview_html: render_to_string(partial: "preview", locals: {gear: @gear})
      }]
    @booking = Booking.new
    @reviews = @gear.reviews
  end

  def new
    @gear = Gear.new
    @booking = Booking.new
  end

  def create
    @gear = Gear.new(gear_params)
    @gear.unavailabilities = params[:gear][:unavailabilities].split(", ")
    @gear.user = current_user
    if @gear.save
      redirect_to @gear, notice: "Gear was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end


  private

  def set_gear
    @gear = Gear.find(params[:id])
  end

  def gear_params
    params.require(:gear).permit(:name, :price, :category, :unavailabilities, :description, :short_description, :photo)
  end

end
