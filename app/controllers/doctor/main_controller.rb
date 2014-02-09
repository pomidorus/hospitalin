class Doctor::MainController < ApplicationController
  before_filter :authenticate_user!

  def dashboard
    @patients = Patient.all
  end

  def documentation
  end
end
