class JobsController < ApplicationController
  def index
    @jobs = Job.search params[:search]

    @jobs = filter_by_category      @jobs
    @jobs = filter_by_created_date  @jobs
    @jobs = filter_by_deadline      @jobs
  end

  def show
    @job = Job.find params[:id]
  end

  private

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
