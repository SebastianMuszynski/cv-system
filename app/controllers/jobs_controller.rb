class JobsController < ApplicationController
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
    @job = Job.find(params[:id])
  end
end
