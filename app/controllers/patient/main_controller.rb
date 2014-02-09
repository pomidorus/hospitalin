class Patient::MainController < ApplicationController
  before_filter :authenticate_user!

  def dashboard
  end

  def public
  end
end
