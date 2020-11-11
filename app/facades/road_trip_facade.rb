class RoadTripFacade
  def self.create_trip(origin, destination)
    dest_coords = MapFacade.get_coords_by_loc(destination)
    distance_json = MapService.road_trip_distance(origin, destination)
    formatted_time = distance_json[:route][:formattedTime]
    real_time = distance_json[:route][:realTime]
    weather_json = ForecastService.forecast_by_coords(dest_coords)[:hourly]
    weather_time = Time.now + real_time

    if weather_time.strftime("%M").to_i < 30
      weather_time = weather_time.beginning_of_hour
    else
      weather_time = (weather_time + 1).beginning_of_hour
    end

    weather_at_destination = weather_json.select do |hourly|
      weather_time == Time.at(hourly[:dt])
    end
    temperature = weather_at_destination[0][:temp]
    conditions = weather_at_destination[0][:weather][0][:description]
    poro_details = [origin, destination, formatted_time, temperature, conditions]
    RoadTrip.new(poro_details)
  end
end
