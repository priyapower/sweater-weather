require "rails_helper"

RSpec.describe "Trails API", :vcr do
  describe "can send hiking details by location including forecast" do
    scenario "can retrive trails details with weather as index action" do
      query_params = {
        location: 'denver, co'
      }

      get "/api/v1/trails", params: query_params
      expect(response).to be_successful
      trails = JSON.parse(response.body, symbolize_names: true)[:data]
      binding.pry
      expect(trails).to be_a(Hash)
      expect(trails.start_weather).to be_a(StartWeather)
      expect(trails.start_weather).to have_key(:start_temp)
      expect(trails.start_weather[:start_temp]).to be_a(Float)
      expect(trails.start_weather).to have_key(:start_conditions)
      expect(trails.start_weather[:start_conditions]).to be_a(Float)
      
      expect(trails.nearby_trails).to be_a(Array)
      expect(trails.nearby_trails.first).to be_a(Trail)
      expect(trails.nearby_trails.first).to have_key(:name)
      expect(trails.nearby_trails.first[:name]).to be_a(String)
      expect(trails.nearby_trails.first).to have_key(:summary)
      expect(trails.nearby_trails.first[:summary]).to be_a(String)
      expect(trails.nearby_trails.first).to have_key(:difficulty)
      expect(trails.nearby_trails.first[:difficulty]).to be_a(String)
      expect(trails.nearby_trails.first).to have_key(:location)
      expect(trails.nearby_trails.first[:location]).to be_a(String)
      expect(trails.nearby_trails.first).to have_key(:distance)
      expect(trails.nearby_trails.first[:distance]).to be_a(String)
    end
  end
end
