require "rails_helper"

RSpec.describe MapService do
  it "calls external api MapQuest for coordinates", :vcr do
    location = 'denver, co'
    json = MapService.get_coords_by_loc(location)
    expect(json).to be_a(Hash)
    expect(json).to have_key(:results)
    expect(json[:results]).to be_an(Array)
    expect(json[:results].first).to be_a(Hash)
    expect(json[:results].first).to have_key(:locations)
    expect(json[:results].first[:locations]).to be_an(Array)
    expect(json[:results].first[:locations].first).to be_a(Hash)
    expect(json[:results].first[:locations].first).to have_key(:latLng)
    expect(json[:results].first[:locations].first[:latLng]).to be_a(Hash)
    expect(json[:results].first[:locations].first[:latLng]).to have_key(:lat)
    expect(json[:results].first[:locations].first[:latLng]).to have_key(:lng)
    expect(json[:results].first[:locations].first[:latLng][:lat]).to be_a(Float)
    expect(json[:results].first[:locations].first[:latLng][:lng]).to be_a(Float)
  end

  it "calls external api MapQuest for distance", :vcr do
    start_longitude = -104.984853
    start_latitude = 39.738453
    trail_longitude = -104.9567
    trail_latitude = 39.7495
    json = MapService.distance_to_trails(start_longitude, start_latitude, trail_longitude, trail_latitude)
    expect(json).to be_a(Hash)
    expect(json).to have_key(:route)
    expect(json[:route]).to be_a(Hash)
    expect(json[:route]).to have_key(:distance)
    expect(json[:route][:distance]).to be_a(Float)
  end

  xit "calls external api Mapquest for distance for road trip", :vcr do
  end
end
