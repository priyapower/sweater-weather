require "rails_helper"

RSpec.describe Map, :vcr do
  it "creates a map poro after successful request" do
    location = 'denver, co'
    json = MapService.get_coords_by_loc(location)
    map = Map.new(json)
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

  it "creates a map poro with UNSUCCESSFUL information" do
    location = ''
    json = MapService.get_coords_by_loc(location)
    map = Map.new(json)
    expect(map.id).to be_nil
    expect(map.status_code).to be_a(Integer)
    expect(map.status_code).to eq(400)
    expect(map.messages).to be_a(Array)
    expect(map.messages[0]).to be_a(String)
    expect(map.messages).to eq(["Illegal argument from request: Insufficient info for location"])
    expect(map.longitude).to be_nil
    expect(map.latitude).to be_nil
  end
end
