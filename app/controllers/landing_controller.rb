class LandingController < ApplicationController

  def welcome
    @locations = Location.all
    @five_locations = Location.all.limit(5)
    @loc_hash = Gmaps4rails.build_markers(@five_locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end

    @loc_hash.push({lat: 33.1243208,lng: -117.32582479999996})
  end

  def about
  end

end
