require "rails_helper"

RSpec.describe "User API", :vcr do
  describe "user login" do
    scenario "a registered user can login to the system if credentials are correct" do
      User.destroy_all
      ActiveRecord::Base.connection.reset_pk_sequence!('users')
      User.create!("email": 'whatever@example.com',
      "password": 'password')

      login_params = {
          "email": 'whatever@example.com',
          "password": 'password',
        }

      headers = {
        'CONTENT_TYPE': 'application/json',
        'ACCEPT': 'application/json'
      }
      post "/api/v1/sessions", headers: headers, params: JSON.generate(login_params)

      expect(response).to be_successful
      expect(response.content_type).to eq("application/json")
      expect(response.status).to eq(200)

      login_response = JSON.parse(response.body, symbolize_names: true)
      expect(login_response).to be_a(Hash)
      expect(login_response).to have_key(:data)
      expect(login_response[:data]).to be_a(Hash)
      expect(login_response[:data]).to have_key(:type)
      expect(login_response[:data][:type]).to be_a(String)
      expect(login_response[:data][:type]).to eq('users')
      expect(login_response[:data]).to have_key(:id)
      expect(login_response[:data][:id]).to be_a(String)
      expect(login_response[:data]).to have_key(:attributes)
      expect(login_response[:data][:attributes]).to be_a(Hash)
      expect(login_response[:data][:attributes]).to have_key(:email)
      expect(login_response[:data][:attributes][:email]).to be_a(String)
      expect(login_response[:data][:attributes][:email]).to eq(login_params[:email])
      expect(login_response[:data][:attributes]).to have_key(:api_key)
      expect(login_response[:data][:attributes][:api_key]).to be_a(String)


      logged_in_user = User.find(login_response[:data][:id].to_i)
      expect(logged_in_user).to be_a(User)
      expect(logged_in_user.email).to eq(login_params[:email])
      expect(logged_in_user.email).to be_a(String)
      expect(logged_in_user.api_key).to_not be_empty
      expect(logged_in_user.api_key).to be_a(String)
    end

    xscenario "a registered user can see errors during login if errors thrown" do
      # SAD PATH WITH CUSTOM 400 BODY RESPONSE!!!!
      # - An unsuccessful request returns an appropriate 400-level status code and body with a description of why the request wasn’t successful.
      # - Potential reasons a request would fail: passwords don’t match, email has already been taken, missing a field, etc.
    end
  end
end
