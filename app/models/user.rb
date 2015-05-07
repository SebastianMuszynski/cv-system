class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :cvs

  def full_name
    fullname = [first_name, last_name].join(' ')
    fullname unless fullname.blank?
  end
end
