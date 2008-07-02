class Admin::TeacherInformationController < ApplicationController
  layout "admin"

  def index
    @information = Information.teacher
  end
  
  def new
    @information = Information.new
  end
  
  def create
    @information = Information.new(params[:teacher_information])
    @information.teachers_only = true
    if @information.save
      redirect_to :action => :index
    else
      render :action => :new
    end
  end
  
  def edit
    @information = Information.find(params[:id])
  end
  
  def update
    @information = Information.find(params[:id])
    @information.teachers_only = true
    if @information.update_attributes(params[:teacher_information])
      redirect_to :action => :index
    else
      render :action => :edit
    end
  end
  
  def destroy
    Information.destroy(params[:id])
    redirect_to :action => :index
  end
end
