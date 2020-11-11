class TrailFacade
  def self.trails_weather_and_directions_by_coordinates(location, map, forecast)
    json = TrailService.trails_weather_and_directions_by_coordinates(map)
    trails = json[:trails].map do |trail_json|
      IndividualTrail.new(trail_json, map)
    end
    Trail.new(trails, forecast, location)
  end
end
