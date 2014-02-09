class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  layout :check_layout

  def check_layout
    if user_signed_in?
      current_user.role
    else
      "application"
    end
  end
end
