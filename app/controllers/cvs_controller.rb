class CvsController < ApplicationController
  before_action :set_cv, only: [:show, :edit, :update, :destroy]

  def index
    if params[:job_id].present?
      @cvs = Job.find(params[:job_id]).cvs
    else
      @cvs = Cv.all
    end
  end

  def show
    if params[:job_id].present?
      @cv = Cv.where(job_id: params[:job_id], id: params[:id]).first
    end
  end

  def new
    @cv = Cv.new
    @job = Job.find(params[:job_id]) if params[:job_id].present?
  end

  def edit
    @job = @cv.job
  end

  def create
    if params[:job_id].present?
      @job = Job.find(params[:job_id])
      
      @cv = @job.cvs.new(cv_params)
      @cv.user_id = current_user.id

      if @cv.save
        redirect_to [@job, @cv], notice: 'CV was successfully created!'
      else
        render action: 'new'
      end      
    else
      @cv = @job.cvs.new(cv_params)
      @cv.user_id = current_user.id
      
      if @cv.save
        redirect_to @cv, notice: 'CV was successfully created!'
      else
        render action: 'new'
      end
    end
  end

  def update
    @cv.request_feedback unless @cv.pending?

    if @cv.update(cv_params)
      redirect_to @cv, notice: 'CV was successfully updated!'
    else
      render action: 'edit'
    end
  end

  def destroy
    notice = if @cv.destroy
      'CV was successfully deleted.'
    else 
      'An error occured while deleting the CV!'
    end
    redirect_to cvs_url, notice: notice
  end

  private

  def set_cv
    @cv = Cv.find(params[:id])
  end

  def cv_params
    params.require(:cv).permit(:id, :name, :address, :email, :phone_number, :personal_profile, :education, :technical_skills, :project_work, 
      :professional_experience, :interests_and_achievements, :references, :job_id, :user_id, :created_at)
  end
end
