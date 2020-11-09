require "rails_helper"

RSpec.describe "Forecast API", :vcr do
  describe "can send forecast details by location" do
    scenario "can retrive weather by location as index action" do
      # get long and lat for city
      # "latLng": {
      #                   "lat": 39.738453,
      #                   "lng": -104.984853
      #               }
      # openweather onecall api with long and lat from above
      # Testing should look for more than just the presence of attribute fields in the response. Testing should also determine which fields should NOT be present. (don’t send unnecessary data)
      query_params = {
        location: 'denver, co'
        }
      get "/api/v1/forecast", params: query_params
      expect(response).to be_successful
      forecast = JSON.parse(response.body, symbolize_names: true)[:data]
      binding.pry
      expect(forecast[:attributes][:latitude]).to eq(39.738453)
      expect(forecast[:attributes][:longtitude]).to eq(-104.984853)
      #
      # {
      #   "data": {
      #     "id": null,
      #     "type": "forecast",
      #     "attributes": {
      #       "current_weather": {
      #         "datetime": "2020-09-30 13:27:03 -0600",
      #         "temperature": 79.4,
      #         etc
      #       },
      #       "daily_weather": [
      #         {
      #           "date": "2020-10-01",
      #           "sunrise": "2020-10-01 06:10:43 -0600",
      #           etc
      #         },
      #         {...} etc
      #       ],
      #       "hourly_weather": [
      #         {
      #           "time": "14:00:00",
      #           "wind_speed": "4 mph",
      #           "wind_direction": "from NW",
      #           etc
      #         },
      #         {...} etc
      #       ]
      #     }
      #   }
      # }
      # #
      # expect(forecast[:id]).to be_nil
      # expect(forecast[:attributes]).to have_key(:date)
      # expect(forecast[:attributes][:date]).to be_a(String)
      #
      # expect(forecast[:attributes]).to have_key(:current_temp)
      # expect(forecast[:attributes][:current_temp]).to be_a(Float)
      #
      # expect(forecast[:attributes]).to have_key(:feels_like)
      # expect(forecast[:attributes][:feels_like]).to be_a(Float)
      #
      # expect(forecast[:attributes]).to have_key(:high_temp)
      # expect(forecast[:attributes][:high_temp]).to be_a(Float)
      #
      # expect(forecast[:attributes]).to have_key(:low_temp)
      # expect(forecast[:attributes][:low_temp]).to be_a(Float)
      #
      # expect(forecast[:attributes]).to have_key(:weather_summary)
      # expect(forecast[:attributes][:weather_summary]).to be_a(String)
    end
  end
end
