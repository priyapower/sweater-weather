require "rails_helper"

RSpec.describe "Forecast API", :vcr do
  describe "can get image by forecast" do
    scenario "can get image from Flickr API with source credit as an index action" do
      query_params = {
        location: 'denver, co'
        }
      get "/api/v1/backgrounds", params: query_params
      expect(response).to be_successful
      expect(response.content_type).to eq("application/json")
      image = JSON.parse(response.body, symbolize_names: true)[:data]
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
      expect(attributes).to have_key(:image)
      expect(attributes[:image]).to be_a(Hash)
      expect(attributes[:image]).to have_key(:location)
      expect(attributes[:image][:location]).to be_a(String)
      expect(attributes[:image]).to have_key(:image_url)
      expect(attributes[:image][:image_url]).to be_a(String)
      expect(attributes[:image]).to have_key(:credit)
      expect(attributes[:image][:credit]).to be_a(Hash)
      expect(attributes[:image][:credit]).to have_key(:source)
      expect(attributes[:image][:credit][:source]).to be_a(String)
      expect(attributes[:image][:credit]).to have_key(:author)
      expect(attributes[:image][:credit][:author]).to be_a(String)
      expect(attributes[:image][:credit]).to have_key(:logo)
      expect(attributes[:image][:credit][:logo]).to be_a(String)

      # - Please read the terms of use of your image provider about giving credit for the search results, and put appropriate content in the response!!
      # - EXTENSION: Determine the time of day and current weather and include that in your search; for example, searching for “denver evening snow” might return a far more interesting result
    end
  end
end
