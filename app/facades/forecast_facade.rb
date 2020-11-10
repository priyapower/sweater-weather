class ForecastFacade
  def self.forecast_by_coords(location)
    map = MapFacade.get_coords_by_loc(location)
    if map.status_code == 400
      map
    else
      get_weather_by_coords(map)
    end
  end

  def self.get_weather_by_coords(map)
    json = ForecastService.forecast_by_coords(map)
    current = make_current_poro(json[:current])
    daily = make_daily_poros(json[:daily][0..4])
    hourly = make_hourly_poros(json[:hourly][0..7])
    Forecast.new(current, daily, hourly)
  end

  def self.make_current_poro(data)
    Current.new(data)
  end

  def self.make_daily_poros(data)
    data.map do |json_daily|
      Daily.new(json_daily)
    end
  end

  def self.make_hourly_poros(data)
    data.map do |json_hourly|
      Hourly.new(json_hourly)
    end
  end

  def self.forecast_for_hike(map)
    json = ForecastService.forecast_by_coords(map)
    HikingForecast.new(json[:current])
  end
end
