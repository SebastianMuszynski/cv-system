class Admin::FeedbacksController < ApplicationController
  before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  def index
    @feedbacks = Feedback.all
  end

  def show
  end

  def new
    @feedback = Feedback.new
    @cv = Cv.find(params[:cv_id]) if params[:cv_id].present?
  end

  def edit
  end

  def create
    @feedback = Feedback.new feedback_params.except(:custom_field_feedbacks)
    @feedback.staff_member_id = current_staff_member.id
    @feedback.cv_id = params[:cv_id]

    feedback_params[:custom_field_feedbacks].each do |custom_feedback|
      custom_field_id = custom_feedback[0]
      custom_comment = custom_feedback[1][:comment]
      CustomField.find(custom_field_id).custom_field_feedbacks.create(comment: custom_comment)
    end

    cv = Cv.find params[:cv_id]
    case params[:commit]
    when "Ready to send"
      @feedback.accept
      cv.accept
    when "Needs improvement"
      @feedback.reject
      cv.reject
    else
      logger.error "An error occured with changing feedback status!"
    end

    if @feedback.save
      redirect_to admin_feedbacks_url, notice: 'Feedback was successfully created!'
    else
      render action: 'new'
    end
  end

  def update
    if @feedback.update feedback_params.except(:custom_field_feedbacks)
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
      :professional_experience, :interests_and_achievements, :references, :other_comments, :cv_id, :staff_member_id, :created_at, custom_field_feedbacks: [:id, :comment])
  end
end
