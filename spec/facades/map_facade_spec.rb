require "rails_helper"

RSpec.describe MapFacade, :vcr do
  it "aggragates data for coords and returns a map poro" do
    location = 'denver, co'
    map = MapFacade.get_coords_by_loc(location)
    expect(map).to be_a(Map)
    expect(map.id).to be_nil
    expect(map.status_code).to be_a(Integer)
    expect(map.status_code).to eq(0)
    expect(map.messages).to be_a(Array)
    expect(map.messages).to be_empty
    expect(map.longitude).to be_a(Float)
    expect(map.longitude).to eq(-104.984853)
    expect(map.latitude).to be_a(Float)
    expect(map.latitude).to eq(39.738453)
  end

  it "can confirm time is rounded" do
    time = Time.now.beginning_of_hour

    round_down = time + 120
    # This puts it at 2 minutes past the hour
    expect(MapFacade.round_time(round_down)).to eq(time)

    round_up = time + 1920
    # This puts it at 32 minutes past the hour
    expect(MapFacade.round_time(round_up)).to eq(time + 3600)
  end
end
