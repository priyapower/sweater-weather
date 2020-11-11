require "rails_helper"

RSpec.describe BackgroundImageFacade do
  it "aggragates data for background image by location", :vcr do
    location = 'denver, co'
    background_image = BackgroundImageFacade.get_image_by_location(location)
    expect(background_image).to be_a(BackgroundImage)
    expect(background_image.id).to be_nil
    expect(background_image.location).to be_a(String)
    expect(background_image.image_url).to be_a(String)
    expect(background_image.credit).to be_a(Hash)
    expect(background_image.credit[:source]).to be_a(String)
    expect(background_image.credit[:author]).to be_a(String)
    expect(background_image.credit[:logo]).to be_a(String)
  end
end
