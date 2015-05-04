class CustomField < ActiveRecord::Base
  belongs_to :cv
  has_many :custom_field_feedbacks, dependent: :destroy
  accepts_nested_attributes_for :custom_field_feedbacks, allow_destroy: true
end
