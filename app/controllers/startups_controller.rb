class StartupsController < ApplicationController
  def index
    @startups = Startup.all
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @startups = Startup.where("name ILIKE ?", "%#{@name}%")
    end
  end

  def show
    @startup = Startup.find(params[:id])
    @people = @startup.people
    @investors = @startup.investors
  end
end
