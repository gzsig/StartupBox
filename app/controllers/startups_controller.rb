class StartupsController < ApplicationController
  def index
    @startups = Startup.all
  end

  def show
    @startup = Startup.find(params[:id])
  end
end
