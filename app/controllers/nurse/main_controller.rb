class Nurse::MainController < ApplicationController
  def dashboard
    @patient = Patient.new
  end

  def documentation
  end
end
