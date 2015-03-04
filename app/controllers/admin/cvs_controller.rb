class Admin::CvsController < ApplicationController
  def index
    @cvs = Cv.all
  end
end
