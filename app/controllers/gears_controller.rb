class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]

  def index
    @gears = Gear.all
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window_html: render_to_string(partial: "preview", locals: {user: user})
      }
    end
  end

  def show
    @user = @gear.user
    @markers = [{lat: @user.latitude, lng: @user.longitude}]
  end

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gear_params)
    @gear.user = current_user


    if @gear.save
      redirect_to @gear, notice: "Gear was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end


  private

  def set_gear
    @gear = Gear.find(params[:id])
  end

  def gear_params
    params.require(:gear).permit(:name, :price, :availability, :category, :description, :short_description, :photo)
  end

end
