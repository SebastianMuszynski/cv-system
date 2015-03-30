class Admin::JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  def index
    if params[:category].present? && params[:category] != "All categories"
      @jobs = Job.where(category: params[:category])
    else
      @jobs = Job.all
    end

    if params[:date].present? && params[:date] == "Oldest"
      created_date_order = :asc
    else
      created_date_order = :desc
    end

    @jobs.order!(created_at: created_date_order)

    if params[:deadline].present? 
      if params[:deadline] == "Upcoming"
        @jobs.reorder!(deadline: :asc)
      elsif params[:deadline] == "Furthest"
        @jobs.reorder!(deadline: :desc)
      end
    end
  end

  def show
  end

  def new
    @job = Job.new
  end

  def edit
  end

  def create
    @job = Job.new job_params

    if @job.save
      redirect_to [:admin, @job], notice: 'Job was successfully created!'
    else
      render action: 'new'
    end
  end

  def update
    if @job.update job_params
      redirect_to [:admin, @job], notice: 'Job was successfully updated!'
    else
      render action: 'edit'
    end
  end

  def destroy
    notice = if @job.destroy
      'Job was successfully deleted.'
    else 
      'An error occured while deleting the job!'
    end
    redirect_to admin_jobs_url, notice: notice
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:id, :title, :description, :logo, :deadline, :salary, :category)
  end
end
