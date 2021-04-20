class ServicesController < ApplicationController

    def create
        @service = service.build(params.require(:service).permit(:duration, :price, :service_name))
        if @service.save
          flash[:success] = "New service created."
          redirect_to welcome_url
        else
          flash.now[:error] = "Service could not be created."
        end
      end

end
