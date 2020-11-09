class ForecastFacade
  def self.forecast_by_coords(map)
    json = ForecastService.forecast_by_coords(map)
    current = Current.new(json[:current])
    daily = json[:daily][0..4].map do |json_daily|
      Daily.new(json_daily)
    end
    hourly = json[:hourly][0..7].map do |json_hourly|
      Hourly.new(json_hourly)
    end
    Forecast.new(current, daily, hourly)
  end

  def self.forecast_for_hike(map)
    json = ForecastService.forecast_by_coords(map)
    HikingForecast.new(json[:current])
  end
end
