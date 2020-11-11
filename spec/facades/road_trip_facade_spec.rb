require "rails_helper"

RSpec.describe RoadTripFacade do
  it "aggragates data for road trip creation", :vcr do
    trip_params = {
      "origin": "Denver,CO",
      "destination": "Pueblo,CO",
    }
    trip = RoadTripFacade.create_trip(trip_params[:origin], trip_params[:destination])
    expect(trip).to be_a(RoadTrip)
    expect(trip.id).to be_nil
    expect(trip.start_city).to be_a(String)
    expect(trip.start_city).to eq(trip_params[:origin])
    expect(trip.end_city).to be_a(String)
    expect(trip.end_city).to eq(trip_params[:destination])
    expect(trip.travel_time).to be_a(String)
    expect(trip.travel_time).to eq("01:43:57")
    expect(trip.weather_at_eta).to be_a(Hash)
    expect(trip.weather_at_eta[:temperature]).to be_a(Float)
    expect(trip.weather_at_eta[:temperature]).to eq(39.43)
    expect(trip.weather_at_eta[:conditions]).to be_a(String)
    expect(trip.weather_at_eta[:conditions]).to eq("scattered clouds")
  end
end
