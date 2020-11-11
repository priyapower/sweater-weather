require "rails_helper"

RSpec.describe MapFacade do
  it "aggragates data for coords", :vcr do
    location = 'denver, co'
    map = MapFacade.get_coords_by_loc(location)
    expect(map).to be_a(Map)
    expect(map.id).to be_nil
    expect(map.longitude).to be_a(Float)
    expect(map.latitude).to be_a(Float)
    expect(map.longitude).to eq(-104.984853)
    expect(map.latitude).to eq(39.738453)
  end

  it "aggragates data for distance to trails", :vcr do
    start_longitude = -104.984853
    start_latitude = 39.738453
    trail_longitude = -104.9567
    trail_latitude = 39.7495
    distance = MapFacade.distance_to_trails(start_longitude, start_latitude, trail_longitude, trail_latitude)
    expect(distance).to be_a(Float)
  end
end
