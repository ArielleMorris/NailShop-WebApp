class TechniciansController < ApplicationController

    def create
        @technician = technician.build(params.require(:technician).permit(:tech_name))
        if @technician.save
          flash[:success] = "New technician created."
          redirect_to welcome_url
        else
          flash.now[:error] = "Technician could not be created."
        end
      end

end
