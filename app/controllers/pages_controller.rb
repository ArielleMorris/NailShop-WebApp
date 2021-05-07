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
        @customers = User.order(:id)
        if current_user.nil?
            redirect_to welcome_url, :flash => {:error => "You do not have access to this page"}
          elsif current_user.manager_role?
            render :customers
          else 
            redirect_to welcome_url, :flash => {:error => "You do not have access to this page"}
          end
    end

    def register   
        render :register
    end

    def manage
        if current_user.nil?
            redirect_to welcome_url, :flash => { :error => "You do not have access to this page." }
            
        elsif current_user.manager_role?
            @techs = Technician.order(:tech_name)
            render :managerhome

        else
            redirect_to welcome_url, :flash => { :error => "You do not have access to this page." }

        end
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

    def show
        @show_customer = User.find(params[:id])
        @show_appointment = @show_customer.appointments.last
        if current_user.nil?
            redirect_to welcome_url, :flash => { :error => "You do not have access to this page." }
        elsif current_user.manager_role?
            render :show
        else
            redirect_to welcome_url, :flash => { :error => "You do not have access to this page." }
        end
    end

end

