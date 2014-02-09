class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :patients

  def patient?
    role == "patient"
  end

  def doctor?
    role == "doctor"
  end

  def nurse?
    role == "nurse"
  end

end
