class MainController < ApplicationController
  def index
    @information = Information.recent
    @vertretungen_heute = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_1.txt"))
    @vertretungen_morgen = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_2.txt"))
  end
  
  def lehrer
    @information = Information.recent
    @vertretungen_heute = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_1.txt"))
    @vertretungen_morgen = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_2.txt"))
    render :layout => "lehrer"
  end
end
