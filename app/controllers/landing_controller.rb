class LandingController < ApplicationController

  def welcome
    @locations = Location.all
  end

  def about
  end

end
