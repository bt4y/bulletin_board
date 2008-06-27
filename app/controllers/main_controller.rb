class MainController < ApplicationController
  def index
    @appointments = Appointment.recent
    @stand_ins = StandInProcessor.new(File.read(RAILS_ROOT + "/public/tag_1.txt"))
  end
end
