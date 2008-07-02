class Admin::InformationController < ApplicationController
  layout "admin"

  def index
    @information = Information.all
  end
  
  def new
    @information = Information.new
  end
  
  def create
    @information = Information.new(params[:information])
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
    if @information.update_attributes(params[:information])
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
