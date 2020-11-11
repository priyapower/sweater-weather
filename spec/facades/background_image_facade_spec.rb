require "rails_helper"

RSpec.describe BackgroundImageFacade, :vcr do
  it "aggragates data for background image by location if successful" do
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

    expect(background_image.location).to eq("denver, co")
    expect(background_image.credit[:source]).to eq("https://www.reddit.com/r/pics/comments/2ivi8l/huge_cloud_over_denver_colorado/")
    expect(background_image.credit[:author]).to eq("Reddit")
  end

  it "returns errors path if unsuccessful" do
    location = ''
    unsuccessful = BackgroundImageFacade.get_image_by_location(location)
    expect(unsuccessful).to be_a(Map)
    expect(unsuccessful.id).to be_nil
    expect(unsuccessful.messages).to be_an(Array)
    expect(unsuccessful.messages).to eq(["Illegal argument from request: Insufficient info for location"])
    expect(unsuccessful.status_code).to be_an(Integer)
    expect(unsuccessful.status_code).to eq(400)
  end
end
