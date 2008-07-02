class MainController < ApplicationController
  def index
    @information = Information.general.recent
    
    @vertretungen_heute  = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_1.txt"))
    @vertretungen_morgen = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_2.txt"))
  end
  
  def lehrer
    @information  = Information.general.recent
    @teacher_info = Information.teacher.recent
    
    @vertretungen_heute  = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_1.txt"))
    @vertretungen_morgen = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_2.txt"))
    
    render :layout => "lehrer"
  end
end
