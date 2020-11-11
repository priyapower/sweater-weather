require "rails_helper"

RSpec.describe Forecast, :vcr do
  it "creates a forecast poro" do
    location = 'denver, co'
    map = MapFacade.get_coords_by_loc(location)
    json = ForecastService.forecast_by_coords(map)
    current = Current.new(json[:current])
    daily = json[:daily][0..4].map do |json_daily|
      Daily.new(json_daily)
    end
    hourly = json[:hourly][0..7].map do |json_hourly|
      Hourly.new(json_hourly)
    end
    forecast = Forecast.new(current, daily, hourly)
    expect(forecast.id).to be_nil
    expect(forecast.current_weather).to be_a(Current)
    expect(forecast.daily_weather).to be_an(Array)
    expect(forecast.daily_weather.count).to eq(5)
    expect(forecast.daily_weather.first).to be_a(Daily)
    expect(forecast.hourly_weather).to be_an(Array)
    expect(forecast.hourly_weather.count).to eq(8)
    expect(forecast.hourly_weather.first).to be_a(Hourly)
  end
end
