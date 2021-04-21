class ManagersController < ApplicationController

    def create
        @manager = current_user.managers.build(params.require(:manager).permit(:manager_firstname, :manager_lastname, :email))
        if @manager.save
          flash[:success] = "New manager created."
          redirect_to welcome_url
        else
          flash.now[:error] = "Manager could not be created."
        end
      end
end
