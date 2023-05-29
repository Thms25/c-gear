class GearsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @gears = Gear.all
  end

  def show
  end

  private

  def gear_params
    @gear = Gear.find(params[:id])
  end

end
