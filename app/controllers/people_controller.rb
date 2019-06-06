class PeopleController < ApplicationController
  def show
    @person = Person.find(params[:id])
    @person.startups = @person.startups
  end
end
