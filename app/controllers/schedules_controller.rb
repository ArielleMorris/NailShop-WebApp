class SchedulesController < ApplicationController

    def create
        @schedule = schedule.build(params.require(:schedule).permit(:days_working, :from, :to))
        if @schedule.save
          flash[:success] = "New schedule created."
          redirect_to welcome_url
        else
          flash.now[:error] = "Schedule could not be created."
        end
      end

end
