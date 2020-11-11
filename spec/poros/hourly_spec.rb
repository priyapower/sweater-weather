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

  it "can convert degrees to direction" do
    location = 'denver, co'
    map = MapFacade.get_coords_by_loc(location)
    json = ForecastService.forecast_by_coords(map)
    details = json[:hourly].first
    hourly = Hourly.new(details)
    expect(hourly.convert_degrees_to_direction(0)).to eq('N')
    expect(hourly.convert_degrees_to_direction(12)).to eq('NNE')
    expect(hourly.convert_degrees_to_direction(34)).to eq('NE')
    expect(hourly.convert_degrees_to_direction(57)).to eq('ENE')
    expect(hourly.convert_degrees_to_direction(79)).to eq('E')
    expect(hourly.convert_degrees_to_direction(102)).to eq('ESE')
    expect(hourly.convert_degrees_to_direction(124)).to eq('SE')
    expect(hourly.convert_degrees_to_direction(147)).to eq('SSE')
    expect(hourly.convert_degrees_to_direction(169)).to eq('S')
    expect(hourly.convert_degrees_to_direction(192)).to eq('SSW')
    expect(hourly.convert_degrees_to_direction(214)).to eq('SW')
    expect(hourly.convert_degrees_to_direction(237)).to eq('WSW')
    expect(hourly.convert_degrees_to_direction(259)).to eq('W')
    expect(hourly.convert_degrees_to_direction(282)).to eq('WNW')
    expect(hourly.convert_degrees_to_direction(304)).to eq('NW')
    expect(hourly.convert_degrees_to_direction(327)).to eq('NNW')
    expect(hourly.convert_degrees_to_direction(349)).to eq('N')
  end
end
