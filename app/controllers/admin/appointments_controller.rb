class Admin::AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all
  end
  
  def new
    @appointment = Appointment.new
  end
  
  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save
      redirect_to :action => :index
    else
      render :action => :new
    end
  end
  
  def edit
    @appointment = Appointment.find(params[:id])
  end
  
  def update
    @appointment = Appointment.find(params[:id])
    if @appointment.update_attributes(params[:appointment])
      redirect_to :action => :index
    else
      render :action => :edit
    end
  end
  
  def destroy
    Appointment.destroy(params[:id])
    redirect_to :action => :index
  end
end
