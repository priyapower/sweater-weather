require "rails_helper"

RSpec.describe "User API", :vcr do
  describe "user registration" do
    scenario "a new user can register in the system" do
      create_params = {
          "email": 'whatever@example.com',
          "password": 'password',
          "password_confirmation": 'password'
        }

      headers = {
        'CONTENT_TYPE': 'application/json',
        'ACCEPT': 'application/json'
      }
      post "/api/v1/users", headers: headers, params: JSON.generate(create_params)

      expect(response).to be_successful
      expect(response.content_type).to eq("application/json")
      expect(response.status).to eq(201)

      user_response = JSON.parse(response.body, symbolize_names: true)
      expect(user_response).to be_a(Hash)
      expect(user_response).to have_key(:data)
      expect(user_response[:data]).to be_a(Hash)
      expect(user_response[:data]).to have_key(:type)
      expect(user_response[:data][:type]).to be_a(String)
      expect(user_response[:data][:type]).to eq('users')
      expect(user_response[:data]).to have_key(:id)
      expect(user_response[:data][:id]).to be_a(String)
      expect(user_response[:data]).to have_key(:attributes)
      expect(user_response[:data][:attributes]).to be_a(Hash)
      expect(user_response[:data][:attributes]).to have_key(:email)
      expect(user_response[:data][:attributes][:email]).to be_a(String)
      expect(user_response[:data][:attributes]).to have_key(:api_key)
      expect(user_response[:data][:attributes][:api_key]).to be_a(String)


      created_user = User.last
      expect(created_user).to be_a(User)
      expect(created_user.email).to eq(create_params[:email])
      expect(created_user.api_key).to be_a(String)
    end

    xscenario "a new user can see errors during registration if errors thrown" do
      # SAD PATH WITH CUSTOM 400 BODY RESPONSE!!!!
      # - An unsuccessful request returns an appropriate 400-level status code and body with a description of why the request wasn’t successful.
      # - Potential reasons a request would fail: passwords don’t match, email has already been taken, missing a field, etc.
    end
  end
end
