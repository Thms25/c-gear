class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @gear = Gear.find(params[:gear_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.gear = Gear.find(params[:gear_id])
    if @review.save
      redirect_to gear_path(@review.gear)
    else
      flash[:alert] = "Something went wrong."
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :user_id, :gear_id)
  end
end
