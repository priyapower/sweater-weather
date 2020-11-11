require "rails_helper"

RSpec.describe "Forecast API", :vcr do
  describe "can get image by forecast" do
    scenario "can get image from Bing API with source credit as an index action" do
      query_params = {
        location: 'denver, co'
        }
      get "/api/v1/backgrounds", params: query_params
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(response.content_type).to eq("application/json")
      image = JSON.parse(response.body, symbolize_names: true)
      expect(image).to be_a(Hash)
      expect(image).to have_key(:data)
      expect(image[:data]).to be_a(Hash)
      expect(image[:data]).to have_key(:type)
      expect(image[:data][:type]).to eq('image')
      expect(image[:data]).to have_key(:id)
      expect(image[:data][:id]).to be_nil
      expect(image[:data]).to have_key(:attributes)

      attributes = image[:data][:attributes]
      expect(attributes).to be_a(Hash)
      expect(attributes).to have_key(:location)
      expect(attributes[:location]).to be_a(String)
      expect(attributes).to have_key(:image_url)
      expect(attributes[:image_url]).to be_a(String)
      expect(attributes).to have_key(:credit)
      expect(attributes[:credit]).to be_a(Hash)
      expect(attributes[:credit]).to have_key(:source)
      expect(attributes[:credit][:source]).to be_a(String)
      expect(attributes[:credit]).to have_key(:author)
      expect(attributes[:credit][:author]).to be_a(String)
      expect(attributes[:credit]).to have_key(:logo)
      expect(attributes[:credit][:logo]).to be_a(String)

      expect(attributes[:location]).to eq('denver, co')
      expect(attributes[:image_url]).to eq('https://media.istockphoto.com/photos/denver-colorado-in-the-early-morning-with-clouds-in-the-sky-picture-id930889410?k=6&m=930889410&s=170667a&w=0&h=Y2tZj6w9Nf5ZhABl0A8u2pBwnjgQEKEzuVcyRKxraSE=')
      expect(attributes[:credit][:source]).to eq('https://www.istockphoto.com/photo/denver-colorado-in-the-early-morning-with-clouds-in-the-sky-gm930889410-255183871')
      expect(attributes[:credit][:author]).to eq('iStock')
      expect(attributes[:credit][:logo]).to eq('https://www.bing.com/th?id=ODF.hQ_7876msK32aIBs9d0umw&pid=Api')
    end

    scenario "extension for time of day and weather in search" do
      # FURTHER TESTING ON SEARCH QUERY IS IN SERVICE SPEC FOR BACKGROUND IMAGE
      query_params = {
        location: 'denver, co'
        }
      get "/api/v1/backgrounds", params: query_params
      expect(response).to be_successful
      expect(response.status).to eq(200)
      expect(response.content_type).to eq("application/json")
      extension_image = JSON.parse(response.body, symbolize_names: true)
      expect(extension_image).to be_a(Hash)
      expect(extension_image).to be_a(Hash)
      expect(extension_image).to have_key(:data)
      expect(extension_image[:data]).to be_a(Hash)
      expect(extension_image[:data]).to have_key(:type)
      expect(extension_image[:data][:type]).to eq('image')
      expect(extension_image[:data]).to have_key(:id)
      expect(extension_image[:data][:id]).to be_nil
      expect(extension_image[:data]).to have_key(:attributes)
    end

    scenario "sad path for incorrect location or invalid query" do
      query_params = {
        location: ''
        }
      get "/api/v1/backgrounds", params: query_params
      expect(response).to_not be_successful
      expect(response.status).to eq(404)
      expect(response.body).to eq("Illegal argument from request: Insufficient info for location")
    end
  end
end
