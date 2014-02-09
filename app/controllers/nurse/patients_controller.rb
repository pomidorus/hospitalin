class Nurse::PatientsController < ApplicationController
  def index
  end

  def create
    password_length = 6
    password = Devise.friendly_token.first(password_length)

    user = User.where(email: params[:patient][:email]).first_or_create!(password: 'testtest', role: 'patient', name: params[:patient][:parent], public_token: password)
    user.save!

    patient = Patient.new patient_params
    patient.user = user
    patient.save!
  end


  private
  def patient_params
    params.require(:patient).permit(:email, :diagnose_pre, :parent)
  end

end
