require "rails_helper"

RSpec.describe "Forecast API", :vcr do
  describe "can send forecast details by location" do
    scenario "can retrive weather by location as index action" do
      query_params = {
        location: 'denver, co'
        }
      get "/api/v1/forecast", params: query_params
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(response.content_type).to eq("application/json")
      forecast = JSON.parse(response.body, symbolize_names: true)
      expect(forecast).to be_a(Hash)

      expect(forecast).to have_key(:data)
      expect(forecast[:data]).to be_a(Hash)
      expect(forecast[:data]).to have_key(:id)
      expect(forecast[:data][:id]).to be_nil
      expect(forecast[:data]).to have_key(:type)
      expect(forecast[:data][:type]).to eq('forecast')
      expect(forecast[:data]).to have_key(:attributes)
      expect(forecast[:data][:attributes]).to be_a(Hash)

      current_forecast = forecast[:data][:attributes][:current_weather]
      expect(current_forecast).to be_a(Hash)
      expect(current_forecast).to have_key(:datetime)
      expect(current_forecast[:datetime]).to be_a(String)
      expect(current_forecast).to have_key(:sunrise)
      expect(current_forecast[:sunrise]).to be_a(String)
      expect(current_forecast).to have_key(:sunset)
      expect(current_forecast[:sunset]).to be_a(String)
      expect(current_forecast).to have_key(:temp)
      expect(current_forecast[:temp]).to be_a(Float)
      expect(current_forecast).to have_key(:feels_like)
      expect(current_forecast[:feels_like]).to be_a(Float)
      expect(current_forecast).to have_key(:humidity)
      expect(current_forecast[:humidity]).to be_a(Numeric)
      expect(current_forecast).to have_key(:uvi)
      expect(current_forecast[:uvi]).to be_a(Numeric)
      expect(current_forecast).to have_key(:conditions)
      expect(current_forecast[:conditions]).to be_a(String)
      expect(current_forecast).to have_key(:icon)
      expect(current_forecast[:icon]).to be_a(String)
      # DOESN'T RETURN TOO MUCH INFO FROM JSON
      expect(current_forecast).to_not have_key(:clouds)
      expect(current_forecast).to_not have_key(:pressure)
      # TESTING LIVE DATA FROM VCR RESPONSE
      expect(current_forecast[:temp]).to eq(45.55)
      expect(current_forecast[:feels_like]).to eq(32.02)
      expect(current_forecast[:humidity]).to eq(24)
      expect(current_forecast[:uvi]).to eq(2.41)
      expect(current_forecast[:conditions]).to eq('few clouds')
      expect(current_forecast[:icon]).to eq('02d')

      daily_forecast = forecast[:data][:attributes][:daily_weather]
      expect(daily_forecast).to be_a(Array)
      expect(daily_forecast.count).to eq(5)
      expect(daily_forecast.first).to have_key(:date)
      expect(daily_forecast.first[:date]).to be_a(String)
      expect(daily_forecast.first).to have_key(:sunrise)
      expect(daily_forecast.first[:sunrise]).to be_a(String)
      expect(daily_forecast.first).to have_key(:sunset)
      expect(daily_forecast.first[:sunset]).to be_a(String)
      expect(daily_forecast.first).to have_key(:max_temp)
      expect(daily_forecast.first[:max_temp]).to be_a(Float)
      expect(daily_forecast.first).to have_key(:min_temp)
      expect(daily_forecast.first[:min_temp]).to be_a(Float)
      expect(daily_forecast.first).to have_key(:conditions)
      expect(daily_forecast.first[:conditions]).to be_a(String)
      expect(daily_forecast.first).to have_key(:icon)
      expect(daily_forecast.first[:icon]).to be_a(String)
      # DOESN'T RETURN TOO MUCH INFO FROM JSON
      expect(current_forecast).to_not have_key(:clouds)
      expect(current_forecast).to_not have_key(:pressure)
      # TESTING LIVE DATA FROM VCR RESPONSE
      expect(daily_forecast.first[:max_temp]).to eq(45.55)
      expect(daily_forecast.first[:min_temp]).to eq(33.13)
      expect(daily_forecast.first[:conditions]).to eq('clear sky')
      expect(daily_forecast.first[:icon]).to eq('01d')

      hourly_forecast = forecast[:data][:attributes][:hourly_weather]
      expect(hourly_forecast).to be_a(Array)
      expect(hourly_forecast.count).to eq(8)
      expect(hourly_forecast.first).to have_key(:time)
      expect(hourly_forecast.first[:time]).to be_a(String)
      expect(hourly_forecast.first).to have_key(:temp)
      expect(hourly_forecast.first[:temp]).to be_a(Float)
      expect(hourly_forecast.first).to have_key(:wind_speed)
      expect(hourly_forecast.first[:wind_speed]).to be_a(String)
      expect(hourly_forecast.first).to have_key(:wind_direction)
      expect(hourly_forecast.first[:wind_direction]).to be_a(String)
      expect(hourly_forecast.first).to have_key(:conditions)
      expect(hourly_forecast.first[:conditions]).to be_a(String)
      expect(hourly_forecast.first).to have_key(:icon)
      expect(hourly_forecast.first[:icon]).to be_a(String)
      # DOESN'T RETURN TOO MUCH INFO FROM JSON
      expect(current_forecast).to_not have_key(:clouds)
      expect(current_forecast).to_not have_key(:pressure)
      # TESTING LIVE DATA FROM VCR RESPONSE
      expect(hourly_forecast.first[:temp]).to eq(45.55)
      expect(hourly_forecast.first[:wind_speed]).to eq('3.69 mph')
      expect(hourly_forecast.first[:wind_direction]).to eq('NE')
      expect(hourly_forecast.first[:conditions]).to eq('few clouds')
      expect(hourly_forecast.first[:icon]).to eq('02d')
    end

    scenario "gets 404 error if query doesn't work" do
      query_params = {
        location: ''
        }
      get "/api/v1/forecast", params: query_params
      expect(response).to_not be_successful
      expect(response.status).to eq(404)
      expect(response.body).to eq("Illegal argument from request: Insufficient info for location")
    end
  end
end
