require "rails_helper"

RSpec.describe Hourly, :vcr do
  it "creates a hourly poro" do
    location = 'denver, co'
    map = MapFacade.get_coords_by_loc(location)
    json = ForecastService.forecast_by_coords(map)
    hourly = json[:hourly][0..7].map do |json_hourly|
      Hourly.new(json_hourly)
    end
    expect(hourly).to be_an(Array)
    expect(hourly.first).to be_a(Hourly)
    expect(hourly.first.time).to be_a(String)
    expect(hourly.first.temp).to be_a(Float)
    expect(hourly.first.wind_speed).to be_a(String)
    expect(hourly.first.wind_direction).to be_a(String)
    expect(hourly.first.conditions).to be_a(String)
    expect(hourly.first.icon).to be_a(String)
    expect(hourly.first.temp).to eq(45.55)
    expect(hourly.first.wind_speed).to eq('3.69 mph')
    expect(hourly.first.wind_direction).to eq('NE')
    expect(hourly.first.conditions).to eq('few clouds')
    expect(hourly.first.icon).to eq('02d')
  end
end
