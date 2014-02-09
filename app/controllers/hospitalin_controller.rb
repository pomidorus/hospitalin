class HospitalinController < ApplicationController
  def main
    if user_signed_in?
      if current_user.patient?
        redirect_to :patient_root
      end
    end
  end

  def public_profile
    public_token = params[:token]
    @user = User.find_by_public_token(public_token)
    if @user.blank?
      redirect_to root_path
    end
  end
end
