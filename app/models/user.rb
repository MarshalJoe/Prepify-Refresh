class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :subjects, through: :course_progressions
  has_many :course_progressions


# to update current_user to admin
# def make_admin
# current_user.update_attribute :admin, true
# end

end
