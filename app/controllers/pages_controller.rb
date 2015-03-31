class PagesController < ApplicationController
  def main
    redirect_to admin_jobs_path and return if staff_member_signed_in?
    redirect_to jobs_path       and return if user_signed_in?
    render layout: "homepage"
  end

  def contact
  end
end
