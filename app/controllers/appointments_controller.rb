class AppointmentsController < ApplicationController

  before_action :authenticate_user!
  

  def new
    @appointment = Appointment.new
    render :new
  end

    def create
        @appointment = current_user.appointments.build(params.require(:appointment).permit(:client_firstname , :client_lastname, :date_created, :client_mobile, :technician_name))
        if @appointment.save
          flash[:success] = "Appointment booked."
          redirect_to welcome_url
        else
          flash.now[:error] = "Appointment could not be created."
          render :new
        end
      end



  def edit
    @appointment = Appointment.find(params[:id])
    render :edit
  end

  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update(params.require(:appointment).permit(:client_firstname , :client_lastname, :date_created, :client_mobile, :technician_name))
      flash[:success] = "Appointment successfully rescheduled"
      redirect_to welcome_url(@appointment)
    else
      flash.now[:error] = "Appointment could not be rescheduled"
      render :edit
    end
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    flash[:success] = "The appointment was cancelled "
    redirect_to welcome_url
  end




end