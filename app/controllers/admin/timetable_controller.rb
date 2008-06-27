class Admin::TimetableController < ApplicationController
  layout "admin"
  
  def index
    
  end
  
  def edit
    @tag_1 = File.read(RAILS_ROOT + "/public/tag_1.txt")
    @tag_2 = File.read(RAILS_ROOT + "/public/tag_2.txt")
  end
  
  def update
    File.open(RAILS_ROOT + "/public/tag_1.txt", "w+") do |f|
      f.write params[:tag_1]
    end
    
    File.open(RAILS_ROOT + "/public/tag_2.txt", "w+") do |f|
      f.write params[:tag_2]
    end
    
    flash[:notice] = "Die Aktualisierung des Vertretungsplanes war erfolgreich."
    redirect_to :action => :edit
  end
end
