class Doctor::MainController < ApplicationController
  before_filter :authenticate_user!

  def dashboard
  end

  def documentation
  end
end
