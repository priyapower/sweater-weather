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
    expect(background_image.credit[:author]).to be_a(String).or be_nil
    expect(background_image.credit[:logo]).to be_a(String).or be_nil

    expect(background_image.location).to eq("denver, co")
    expect(background_image.credit[:source]).to eq("https://www.pinterest.com/pin/480477853973838871/")
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

  it "can determine if time is in human speak" do
    time = Time.now.beginning_of_day
    5.times do
      expect(BackgroundImageFacade.time_in_human_speak(time)).to eq('night')
      time += 3600
    end
    6.times do
      expect(BackgroundImageFacade.time_in_human_speak(time)).to eq('morning')
      time += 3600
    end
    7.times do
      expect(BackgroundImageFacade.time_in_human_speak(time)).to eq('afternoon')
      time += 3600
    end
    4.times do
      expect(BackgroundImageFacade.time_in_human_speak(time)).to eq('evening')
      time += 3600
    end
    2.times do
      expect(BackgroundImageFacade.time_in_human_speak(time)).to eq('night')
      time += 3600
    end
  end
end
