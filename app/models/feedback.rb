class Feedback < ActiveRecord::Base
  belongs_to :staff_member
  belongs_to :cv

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

    event :ready do
      transition :accepted => :ready
    end
  end
end
