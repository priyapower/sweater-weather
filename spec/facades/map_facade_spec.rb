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
end
