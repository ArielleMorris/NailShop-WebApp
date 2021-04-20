class AppointmentsController < ApplicationController

    def create
        @appointment = appointment.build(params.require(:appointment).permit(:client_mobile))
        if @appointment.save
          flash[:success] = "Appointment booked."
          redirect_to welcome_url
        else
          flash.now[:error] = "Appointment could not be created."
        end
      end

end
