class ReviewsController < ApplicationController

    def create
        @review = review.build(params.require(:review).permit(:rating_num, :ratings_desc, :service_name, :service_code))
        if @review.save
          flash[:success] = "New review created."
          redirect_to welcome_url
        else
          flash.now[:error] = "Review could not be created."
        end
      end

end