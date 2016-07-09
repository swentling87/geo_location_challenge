module ApplicationHelper
  def lat_calculator(lat)
    hq_lat = 33.124
    lat_distance = hq_lat - lat
    lat_distance.abs
  end

  def long_calculator(long)
    hq_long = -117.325
    long_distance = hq_long - long
    long_distance.abs
  end

  def total_dist_value(lat_distance, long_distance)
    lat_distance + long_distance
  end

  def distance_calculator(location)
    total_dist_value(lat_calculator(location.latitude), long_calculator(location.longitude))
  end

end
