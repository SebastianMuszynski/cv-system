class CvsController < ApplicationController
  before_action :set_cv, only: [:show, :edit, :update, :destroy]

  def index
    @cvs = Cv.all
  end

  def show
  end

  def new
    @cv = Cv.new
  end

  def edit
  end

  def create
    @cv = Cv.new cv_params

    if @cv.save
      redirect_to @cv, notice: 'CV was successfully created!'
    else
      render action: 'new'
    end
  end

  def update
    if @cv.update cv_params
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
