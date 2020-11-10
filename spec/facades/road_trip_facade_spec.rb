require "rails_helper"

RSpec.describe RoadTripFacade do
  xit "aggragates data for road trip creation", :vcr do
    trip_params = {
      "origin": "Denver,CO",
      "destination": "Pueblo,CO",
      "api_key": user.api_key
    }
    trip = RoadTripFacade.create_trip(trip_params[:origin], trip_params[:destination])
    expect(trip).to be_a(RoadTrip)
    expect(trip.id).to be_nil
    expect(trip.start_city).to be_a(String)
    expect(trip.start_city).to eq(trip_params[:origin])
    expect(trip.end_city).to be_a(String)
    expect(trip.end_city).to eq(trip_params[:destination])
    expect(trip.travel_time).to be_a(String)
    expect(trip.weather_at_eta).to be_a(Hash)
    expect(trip.weather_at_eta[:temperature]).to be_a(Float)
    expect(trip.weather_at_eta[:temperature]).to eq(1) # GET FROM VCR FIXTURE
    expect(trip.weather_at_eta[:conditions]).to be_a(String)
    expect(trip.weather_at_eta[:conditions]).to eq('mild') # GET FROM VCR FIXTURE
  end
end
