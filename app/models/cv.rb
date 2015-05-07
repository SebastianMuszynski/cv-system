class Cv < ActiveRecord::Base
  belongs_to :user
  belongs_to :job
  has_many :feedbacks
  has_many :custom_fields, dependent: :destroy
  accepts_nested_attributes_for :custom_fields, allow_destroy: true

  state_machine :status, initial: :pending do
    event :accept do
      transition :pending => :accepted
    end

    event :reject do
      transition :pending => :rejected
    end

    event :request_feedback do
      transition [:rejected, :accepted] => :pending
    end
  end
end
