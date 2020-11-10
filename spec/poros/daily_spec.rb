require "rails_helper"

RSpec.describe Daily, :vcr do
  it "creates a daily poro" do
    location = 'denver, co'
    map = MapFacade.get_coords_by_loc(location)
    json = ForecastService.forecast_by_coords(map)
    daily = json[:daily][0..4].map do |json_daily|
      Daily.new(json_daily)
    end
    expect(daily).to be_an(Array)
    expect(daily.first).to be_a(Daily)
    expect(daily.first.date).to be_a(String)
    expect(daily.first.sunrise).to be_a(Time)
    expect(daily.first.sunset).to be_a(Time)
    expect(daily.first.max_temp).to be_a(Float)
    expect(daily.first.min_temp).to be_a(Float)
    expect(daily.first.conditions).to be_a(String)
    expect(daily.first.icon).to be_a(String)
    expect(daily.first.max_temp).to eq(46.53)
    expect(daily.first.min_temp).to eq(33.13)
    expect(daily.first.conditions).to eq('clear sky')
    expect(daily.first.icon).to eq('01d')
  end
end
