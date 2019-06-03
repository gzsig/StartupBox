class StartupsController < ApplicationController
  def index
    @startups = Startup.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @startups = Startup.global_search(@name)
    end
  end

  def show
    @startup = Startup.find(params[:id])
    @people = @startup.people
    @investments = @startup.investments
    @investors = @startup.investors
  end
end
