require "rails_helper"

RSpec.describe Current, :vcr do
  it "creates a current poro" do
    location = 'denver, co'
    map = MapFacade.get_coords_by_loc(location)
    json = ForecastService.forecast_by_coords(map)
    current = Current.new(json[:current])
    expect(current).to be_a(Current)
    expect(current.datetime).to be_a(Time)
    expect(current.sunrise).to be_a(Time)
    expect(current.sunset).to be_a(Time)
    expect(current.temp).to be_a(Float)
    expect(current.feels_like).to be_a(Float)
    expect(current.humidity).to be_a(Numeric)
    expect(current.uvi).to be_a(Numeric)
    expect(current.conditions).to be_a(String)
    expect(current.icon).to be_a(String)
    expect(current.temp).to eq(46.42)
    expect(current.feels_like).to eq(37.35)
    expect(current.humidity).to eq(22)
    expect(current.uvi).to eq(2.41)
    expect(current.conditions).to eq('few clouds')
    expect(current.icon).to eq('02d')
  end
end
