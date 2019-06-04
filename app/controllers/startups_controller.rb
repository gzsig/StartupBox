class StartupsController < ApplicationController
  def index
    @startups = Startup.paginate(:page => params[:page], :per_page => 50)
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @startups = Startup.global_search(@name)
      @startups = @startups.paginate(:page => params[:page], :per_page => 50)
    end
  end

  def show
    @startup = Startup.find(params[:id])
    @people = @startup.people
    @investments = @startup.investments
    @investors = @startup.investors
  end
end
