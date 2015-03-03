class PagesController < ApplicationController
  def main
    render layout: "homepage" unless (user_signed_in? || staff_member_signed_in?)
  end
end
