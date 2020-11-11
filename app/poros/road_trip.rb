class RoadTrip
  attr_reader :id,
              :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta

  def initialize(attributes)
    @id = nil
    @start_city = attributes[0]
    @end_city = attributes[1]
    @travel_time = attributes[2]
    @weather_at_eta = {
      temperature: attributes[3],
      conditions: attributes[4],
      }
  end
end
