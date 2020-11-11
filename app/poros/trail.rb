class Trail
  attr_reader :id,
              :location,
              :forecast,
              :trails

  def initialize(json_trails, forecast, location)
    @id = nil
    @location = location
    @forecast = forecast
    @trails = json_trails
  end
end
