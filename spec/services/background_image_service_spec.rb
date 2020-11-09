require "rails_helper"

RSpec.describe BackgroundImageService do
  it "calls external api BingImages for image based on location", :vcr do
    location = 'denver, co'
    json = BackgroundImageService.get_image_by_location(location)
    expect(json).to be_a(Hash)
    expect(json[:_type]).to eq('Images')
    expect(json).to have_key(:_type)
    expect(json[:_type]).to be_a(String)
    expect(json).to have_key(:value)
    expect(json[:value]).to be_a(Array)

    expect(json[:value].first).to have_key(:name)
    expect(json[:value].first[:name]).to be_a(String)
    expect(json[:value].first).to have_key(:contentUrl)
    expect(json[:value].first[:contentUrl]).to be_a(String)
    expect(json[:value].first).to have_key(:hostPageUrl)
    expect(json[:value].first[:hostPageUrl]).to be_a(String)
    expect(json[:value].first).to have_key(:hostPageDomainFriendlyName)
    expect(json[:value].first[:hostPageDomainFriendlyName]).to be_a(String)
    expect(json[:value].first).to have_key(:hostPageFavIconUrl)
    expect(json[:value].first[:hostPageFavIconUrl]).to be_a(String)
  end
end
