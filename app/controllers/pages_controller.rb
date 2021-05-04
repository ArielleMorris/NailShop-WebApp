class PagesController < ApplicationController

    def welcome
        if current_user 
            @current_appointment = current_user.appointments.last
        else
            @current_appointment = nil
        end
        render :welcome
    end

    def customers
        render :customers
    end

    def register   
        render :register
    end

    def create
        @pages = Pages.register(params.require(:pages).permit(:fname, :lname, :email, :pass, :repass, :pnum))
            if @pages.save
                flash[:success] = "New account created"
                redirect_to welcome_url
            else
                flash.now[:error] = "Unable to create an account"
                render :register
        end
    end
end
