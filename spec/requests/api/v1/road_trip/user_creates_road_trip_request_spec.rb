require "rails_helper"

RSpec.describe "Road Trip API", :vcr do
  describe "user creates road trip" do
    scenario "user successfly creates a road trip with json response" do
      User.destroy_all
      ActiveRecord::Base.connection.reset_pk_sequence!('users')
      user = User.create!("email": 'whatever@example.com',
      "password": 'password')

      trip_params = {
        "origin": "Denver,CO",
        "destination": "Pueblo,CO",
        "api_key": user.api_key
      }

      headers = {
        'CONTENT_TYPE': 'application/json',
        'ACCEPT': 'application/json'
      }

      post "/api/v1/road_trip", headers: headers, params: JSON.generate(trip_params)
      expect(response).to be_successful
      expect(response.content_type).to eq("application/json")
      expect(response.status).to eq(200)
      road_trip = JSON.parse(response.body, symbolize_names: true)
      expect(road_trip).to be_a(Hash)
      expect(road_trip).to have_key(:data)
      expect(road_trip[:data]).to be_a(Hash)
      expect(road_trip[:data]).to have_key(:type)
      expect(road_trip[:data][:type]).to eq('roadtrip')
      expect(road_trip[:data]).to have_key(:id)
      expect(road_trip[:data][:id]).to be_nil
      expect(road_trip[:data]).to have_key(:attributes)

      attributes = road_trip[:data][:attributes]
      expect(attributes).to be_a(Hash)
      expect(attributes).to have_key(:start_city)
      expect(attributes[:start_city]).to be_a(String)
      expect(attributes).to have_key(:end_city)
      expect(attributes[:end_city]).to be_a(String)
      expect(attributes).to have_key(:travel_time)
      expect(attributes[:travel_time]).to be_a(String)
      expect(attributes).to have_key(:weather_at_eta)
      expect(attributes[:weather_at_eta]).to be_a(Hash)
      expect(attributes[:weather_at_eta]).to have_key(:temperature)
      expect(attributes[:weather_at_eta][:temperature]).to be_a(Float)
      expect(attributes[:weather_at_eta]).to have_key(:conditions)
      expect(attributes[:weather_at_eta][:conditions]).to be_a(String)
    end

    scenario "can see errors if api_key is not not authenticated" do
      User.destroy_all
      ActiveRecord::Base.connection.reset_pk_sequence!('users')
      User.create!("email": 'mickey@example.com', "password": 'password')
      User.create!("email": 'minnie@example.com', "password": 'password')
      User.create!("email": 'donald@example.com', "password": 'password')
      User.create!("email": 'daisy@example.com', "password": 'password')

      trip_params = {
        "origin": "Denver,CO",
        "destination": "Pueblo,CO",
        "api_key": 'invalidkey'
      }

      headers = {
        'CONTENT_TYPE': 'application/json',
        'ACCEPT': 'application/json'
      }

      post "/api/v1/road_trip", headers: headers, params: JSON.generate(trip_params)
      expect(response).to_not be_successful
      expect(response.status).to eq(401)
      expect(response.body).to eq("ERROR: Invalid Api Key")
    end

    scenario "can see errors for origin or destination queries failing" do
      User.destroy_all
      ActiveRecord::Base.connection.reset_pk_sequence!('users')
      user = User.create!("email": 'mickey@example.com', "password": 'password')

      trip_params = {
        "origin": "Denver, Co",
        "destination": "",
        "api_key": user.api_key
      }

      headers = {
        'CONTENT_TYPE': 'application/json',
        'ACCEPT': 'application/json'
      }

      post "/api/v1/road_trip", headers: headers, params: JSON.generate(trip_params)
      expect(response).to_not be_successful
      expect(response.status).to eq(400)
      expect(response.body).to eq("ERROR: At least two locations must be provided.")
    end
  end
end
