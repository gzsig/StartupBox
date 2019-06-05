class StartupsController < ApplicationController
  def index
    @startups = Startup.paginate(:page => params[:page], :per_page => 60)
    @search = params["search"]
    if @search.present?
      @name = @search["name"]
      @startups = Startup.global_search(@name)
      @startups = @startups.paginate(:page => params[:page], :per_page => 60)
    end
  end

  def show
    @startup = Startup.find(params[:id])
    @people = @startup.people
    @investments = @startup.investments
    @investors = @startup.investors
    if @startup.facebook != nil
      @facebook = @startup.facebook
    end
    if @startup.instagram != nil
      @instagram = @startup.instagram
    end
    if @startup.twitter != nil
      @twitter = @startup.twitter
    end
    if @startup.youtube != nil
      @youtube = @startup.youtube
    end
    if @startup.linkedin != nil
      @linkedin = @startup.linkedin
    end
  end
end
