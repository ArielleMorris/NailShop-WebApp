class CustomersController < ApplicationController

    def create
        @customer = current_user.customers.build(params.require(:customer).permit(:first_name, :last_name, :email, :phone_number))
        if @quiz.save
          flash[:success] = "New customer created."
          redirect_to welcome_url
        else
          flash.now[:error] = "Customer could not be created."
        end
      end
end
