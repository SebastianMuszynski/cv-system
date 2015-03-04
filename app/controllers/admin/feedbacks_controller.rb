class Admin::FeedbacksController < ApplicationController
  before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  def index
    @feedbacks = Feedback.all
  end

  def show
  end

  def new
    @feedback = Feedback.new
  end

  def edit
  end

  def create
    @feedback = Feedback.new feedback_params

    if @feedback.save
      redirect_to admin_feedbacks_url, notice: 'Feedback was successfully created!'
    else
      render action: 'new'
    end
  end

  def update
    if @feedback.update feedback_params
      redirect_to [:admin, @feedback], notice: 'Feedback was successfully updated!'
    else
      render action: 'edit'
    end
  end

  def destroy
    notice = if @feedback.destroy
      'Feedback was successfully deleted.'
    else 
      'An error occured while deleting the feedback!'
    end
    redirect_to admin_feedbacks_url, notice: notice
  end

  private

  def set_feedback
    @feedback = Feedback.find(params[:id])
  end

  def feedback_params
    params.require(:feedback).permit(:id, :status, :personal_details, :personal_profile, :education, :technical_skills, :project_work, 
      :professional_experience, :interests_and_achievements, :references, :other_comments, :job_id, :user_id, :created_at)
  end
end
