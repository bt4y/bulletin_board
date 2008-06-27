class MainController < ApplicationController
  def index
    @appointments = Appointment.recent
    @vertretungen_heute = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_1.txt"))
    @vertretungen_morgen = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_2.txt"))
  end
  
  def lehrer
    render :layout => "lehrer"
  end
end
