require "rails_helper"

RSpec.describe RoadTrip, :vcr do
  it "creates a road trip poro" do
    poro_details = ["Denver,CO", "Pueblo,CO", "01:43:57", 39.43, "scattered clouds"]
    roadtrip = RoadTrip.new(poro_details)
    expect(roadtrip).to be_a(RoadTrip)
    expect(roadtrip.id).to be_nil
    expect(roadtrip.start_city).to be_a(String)
    expect(roadtrip.start_city).to eq(poro_details[0])
    expect(roadtrip.end_city).to be_a(String)
    expect(roadtrip.end_city).to eq(poro_details[1])
    expect(roadtrip.travel_time).to be_a(String)
    expect(roadtrip.travel_time).to eq(poro_details[2])
    expect(roadtrip.weather_at_eta).to be_a(Hash)
    expect(roadtrip.weather_at_eta[:temperature]).to be_a(Float)
    expect(roadtrip.weather_at_eta[:temperature]).to eq(poro_details[3])
    expect(roadtrip.weather_at_eta[:conditions]).to be_a(String)
    expect(roadtrip.weather_at_eta[:conditions]).to eq(poro_details[4])
  end
end
