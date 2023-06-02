class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @gear = Gear.find(params[:gear_id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @gear = Gear.find(params[:gear_id])
    @review.gear = @gear

    if @review.save
      redirect_to gear_path(@review.gear)
    else
      # flash[:alert] = "Something went wrong."
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
