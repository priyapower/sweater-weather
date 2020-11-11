require "rails_helper"

RSpec.describe BackgroundImage, :vcr do
  it "sets a background image poro" do
    location = 'denver, co'
    forecast = ForecastFacade.forecast_by_coords(location)
    time = BackgroundImageFacade.time_in_human_speak(forecast.current_weather.datetime)
    weather = forecast.current_weather.conditions
    query = "#{time} #{weather} #{location}"
    json = BackgroundImageService.get_image_by_location(query)
    background_image = BackgroundImage.new(json[:value][0], location)
    expect(background_image).to be_a(BackgroundImage)
    expect(background_image.id).to be_nil
    expect(background_image.location).to be_a(String)
    expect(background_image.image_url).to be_a(String)
    expect(background_image.credit).to be_a(Hash)
    expect(background_image.credit[:source]).to be_a(String)
    expect(background_image.credit[:source]).to eq("https://www.pinterest.com/pin/480477853973838871/")
    expect(background_image.credit[:author]).to be_a(String).or be_nil
    expect(background_image.credit[:logo]).to be_a(String).or be_nil
  end
end
