class Admin::CvsController < ApplicationController
  def index
    @cvs = Cv.where(status: "pending")
  end
end
