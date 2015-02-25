class Admin::JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]
  respond_to :html

  def index
    @jobs = Job.all
    respond_with [:admin, @jobs]
  end

  def show
    respond_with [:admin, @job]
  end

  def new
    @job = Job.new
    respond_with [:admin, @job]
  end

  def edit
  end

  def create
    @job = Job.new job_params
    @job.save
    respond_with [:admin, @job]
  end

  def update
    @job.update job_params
    respond_with [:admin, @job]
  end

  def destroy
    @job.destroy
    respond_with [:admin, @job]
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :logo, :deadline, :salary, :category)
  end

end
