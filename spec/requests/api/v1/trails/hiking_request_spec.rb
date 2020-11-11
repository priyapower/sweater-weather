require "rails_helper"

RSpec.describe "Trails API", :vcr do
  describe "can send hiking details by location including forecast" do
    scenario "can retrive trails details with weather as index action" do
      query_params = {
        location: 'denver, co'
      }

      get "/api/v1/trails", params: query_params
      expect(response).to be_successful
      trail = JSON.parse(response.body, symbolize_names: true)
      expect(trail).to be_a(Hash)
      expect(trail[:data]).to be_a(Hash)
      expect(trail[:data][:id]).to be_nil
      expect(trail[:data][:type]).to eq('trail')

      trail_info = trail[:data][:attributes]
      expect(trail_info).to be_a(Hash)
      expect(trail_info).to have_key(:forecast)
      expect(trail_info[:forecast]).to be_a(Hash)
      expect(trail_info[:forecast]).to have_key(:temperature)
      expect(trail_info[:forecast][:temperature]).to be_a(String)
      expect(trail_info[:forecast]).to have_key(:summary)
      expect(trail_info[:forecast][:summary]).to be_a(String)
      expect(trail_info).to have_key(:location)
      expect(trail_info[:location]).to be_a(String)
      expect(trail_info).to have_key(:trails)

      trails = trail[:data][:attributes][:trails]
      expect(trails).to be_a(Array)
      expect(trails.first).to be_a(Hash)
      expect(trails.first).to have_key(:name)
      expect(trails.first[:name]).to be_a(String)
      expect(trails.first).to have_key(:summary)
      expect(trails.first[:summary]).to be_a(String)
      expect(trails.first).to have_key(:difficulty)
      expect(trails.first[:difficulty]).to be_a(String)
      expect(trails.first).to have_key(:location)
      expect(trails.first[:location]).to be_a(String)
      expect(trails.first).to have_key(:distance_to_trail)
      expect(trails.first[:distance_to_trail]).to be_a(Float)
    end
  end
end
