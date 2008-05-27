class MainController < ApplicationController
  def index
    @appointments = Appointment.recent
  end
end
