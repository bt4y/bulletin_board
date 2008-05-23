class MainController < ApplicationController
  def index
    @appointments = Appointment.all
  end
end
