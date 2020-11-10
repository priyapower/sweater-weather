require "rails_helper"

RSpec.describe ForecastFacade, :vcr do
  it "aggragates data for forecast by coordinates (also tests subsequent helper methods)" do
    # This test is having a vcr error where it always tries to rewrite it.
    # No other test has this issue, so this one won't have live data testing since this is done in the Poro and Service Specs
    location = 'denver, co'
    map = MapFacade.get_coords_by_loc(location)
    forecast = ForecastFacade.forecast_by_coords(map)
    expect(forecast).to be_a(Forecast)
    expect(forecast.id).to be_nil
    expect(forecast.current_weather).to be_a(Current)
    expect(forecast.current_weather.conditions).to be_a(String)
    expect(forecast.daily_weather).to be_a(Array)
    expect(forecast.daily_weather.count).to eq(5)
    expect(forecast.daily_weather.first).to be_a(Daily)
    expect(forecast.daily_weather.first.conditions).to be_a(String)
    expect(forecast.hourly_weather).to be_a(Array)
    expect(forecast.hourly_weather.count).to eq(8)
    expect(forecast.hourly_weather.first).to be_an(Hourly)
  end
end
