class Admin::JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

   def index
    @jobs = Job.search params[:search]

    @jobs = filter_by_category      @jobs
    @jobs = filter_by_created_date  @jobs
    @jobs = filter_by_deadline      @jobs
  end

  def show
    @job = Job.find params[:id]
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

  def filter_by_category jobs
    return jobs if params[:category].nil? || params[:category] == "All categories"
    @current_category = params[:category]
    jobs.where category: params[:category]
  end

  def filter_by_created_date jobs
    return jobs unless params[:date].present?
    @current_date = params[:date]
    created_date_order = params[:date] == "Oldest" ? :asc : :desc
    jobs.reorder created_at: created_date_order
  end

  def filter_by_deadline jobs
    return jobs unless params[:deadline].present?
    @current_deadline = params[:deadline]
    if params[:deadline] == "Upcoming"
      jobs.reorder deadline: :asc
    elsif params[:deadline] == "Furthest"
      jobs.reorder deadline: :desc
    else
      jobs
    end
  end
end
