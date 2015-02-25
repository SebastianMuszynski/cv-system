class StaffMember < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable
  has_many :feedbacks
end
