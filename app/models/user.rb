class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

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
