class Feedback < ActiveRecord::Base
  belongs_to :staff_member
  belongs_to :cv
end
