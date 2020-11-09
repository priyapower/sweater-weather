class MapFacade
  def self.get_coords_by_loc(location)
    json = MapService.get_coords_by_loc(location)
    Map.new(json)
  end

  def self.distance_to_trails(start_longitude, start_latitude, trail_longitude, trail_latitude)
    json = MapService.distance_to_trails(start_longitude, start_latitude, trail_longitude, trail_latitude)
    json[:route][:distance]
  end
end
