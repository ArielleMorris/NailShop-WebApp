class PagesController < ApplicationController

    def Welcome
        render:welcome
    end

    def customers
        render:customers
    end


=======
    def promotions
        render:promotions
    end

    def review
        render:review
    end

    def register
        
        render:register
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
