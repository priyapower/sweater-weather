require "rails_helper"

RSpec.describe MapService, :vcr do
  it "calls external api MapQuest for coordinates by location" do
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
    expect(json[:results].first[:locations].first[:latLng][:lat]).to be_a(Float)
    expect(json[:results].first[:locations].first[:latLng][:lat]).to eq(39.738453)
    expect(json[:results].first[:locations].first[:latLng]).to have_key(:lng)
    expect(json[:results].first[:locations].first[:latLng][:lng]).to be_a(Float)
    expect(json[:results].first[:locations].first[:latLng][:lng]).to eq(-104.984853)
  end

  it "fails to call external api MapQuest for coordinates by location" do
    location = ''
    json = MapService.get_coords_by_loc(location)
    expect(json).to be_a(Hash)
    expect(json).to have_key(:info)
    expect(json[:info]).to be_a(Hash)
    expect(json[:info]).to have_key(:statuscode)
    expect(json[:info][:statuscode]).to be_a(Integer)
    expect(json[:info][:statuscode]).to eq(400)
    expect(json[:info]).to have_key(:messages)
    expect(json[:info][:messages]).to be_an(Array)
    expect(json[:info][:messages]).to eq(["Illegal argument from request: Insufficient info for location"])
  end
end
