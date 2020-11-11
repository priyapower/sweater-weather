class IndividualTrail
  attr_reader :name,
              :summary,
              :difficulty,
              :location,
              :distance_to_trail

  def initialize(json_trail, map)
    @name = json_trail[:name]
    @summary = json_trail[:summary]
    @difficulty = json_trail[:difficulty]
    @location = json_trail[:location]
    @distance_to_trail = get_directions(map.longitude, map.latitude, json_trail[:longitude], json_trail[:latitude])
  end

  def get_directions(start_longitude, start_latitude, trail_longitude, trail_latitude)
    MapFacade.distance_to_trails(start_longitude, start_latitude, trail_longitude, trail_latitude)
  end
end
