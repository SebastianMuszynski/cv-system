class CvsController < ApplicationController
  def index
  end

  def feedback_preview
    @feedback_status = ['accepted', 'rejected'].sample
  end
end
