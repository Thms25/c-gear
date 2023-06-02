class PagesController < ApplicationController
  def home
  end

  def profile
    @user = current_user
    @gears = @user.gears
    @bookings = @user.bookings
  end
end
