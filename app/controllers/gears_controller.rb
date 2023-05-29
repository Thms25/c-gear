class GearsController < ApplicationController
  before_action :set_gear, only: [:show, :edit, :update, :destroy]

  def index
    @gears = Gear.all
  end

  def show
  end

  private

  def set_gear
    @gear = Gear.find(params[:id])
  end

end
