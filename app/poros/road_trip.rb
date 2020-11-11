class RoadTrip
  attr_reader :id,
              :start_city,
              :end_city,
              :travel_time,
              :weather_at_eta

  def initialize(attributes, origin=nil, destination=nil)
    @id = nil
    if attributes.class == Array
      @start_city = attributes[0]
      @end_city = attributes[1]
      @travel_time = attributes[2]
      @weather_at_eta = {
        temperature: attributes[3],
        conditions: attributes[4],
      }
    else
      @start_city = origin
      @end_city = destination
      @travel_time = 'impossible'
      @weather_at_eta = nil
    end
  end
end
