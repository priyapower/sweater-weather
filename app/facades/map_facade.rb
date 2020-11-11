class MapFacade
  def self.get_coords_by_loc(location)
    json = MapService.get_coords_by_loc(location)
    Map.new(json)
  end

  def self.get_trip_info(origin, destination)
    trip_details = get_trip_details_from_map(origin, destination)
    if trip_details[:info][:statuscode] == 0
      formatted_time = get_destination_formatted_time(trip_details)
      destination_final_time = get_final_time_at_destination(trip_details)
      destination_weather = get_destination_coords_and_weather(destination)
      weather_at_destination = get_weather_at_destination(destination_weather, destination_final_time)
      temperature = weather_at_destination[0][:temp]
      conditions = weather_at_destination[0][:weather][0][:description]
      [origin, destination, formatted_time, temperature, conditions]
    else
      trip_details[:info][:messages][0]
    end
  end

  def self.get_destination_coords_and_weather(destination)
    map = MapFacade.get_coords_by_loc(destination)
    ForecastService.forecast_by_coords(map)[:hourly]
  end

  def self.get_trip_details_from_map(origin, destination)
    MapService.road_trip_distance(origin, destination)
  end

  def self.get_destination_formatted_time(trip_details)
    trip_details[:route][:formattedTime]
  end

  def self.get_final_time_at_destination(trip_details)
    real_time = trip_details[:route][:realTime]
    weather_time = Time.now + real_time
    round_time(weather_time)
  end

  def self.round_time(weather_time)
    if weather_time.min < 30
      weather_time = weather_time.beginning_of_hour
    else
      weather_time = (weather_time + 3600).beginning_of_hour
    end
    weather_time
  end

  def self.get_weather_at_destination(destination_weather, destination_final_time)
    destination_weather.select do |hourly|
      destination_final_time == Time.at(hourly[:dt])
    end
  end
end
