class Job < ActiveRecord::Base
  has_many :cvs
  mount_uploader :logo, CompanyLogoUploader
end
