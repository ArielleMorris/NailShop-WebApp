class ReviewsController < ApplicationController
  
  before_action :authenticate_user!


  def new
    @review = Review.new
    @reviews = Review.all
    render :new
  end

    def create
        @review = Review.new(params.require(:review).permit(:rating_num, :ratings_desc, :service_code, :service_name))
        @reviews = Review.all
        if @review.save
          flash[:success] = "New review created."
          redirect_to newreview_url
        else
          flash.now[:error] = "Review could not be created."
          render :new
        end
      end


end
