require "rails_helper"

RSpec.describe TrailService do
  it "calls external api hikingproject for details", :vcr do
    map_json =  {:info=>
      {:statuscode=>0,
        :copyright=>
        {:text=>"© 2020 MapQuest, Inc.",
          :imageUrl=>"http://api.mqcdn.com/res/mqlogo.gif",
          :imageAltText=>"© 2020 MapQuest, Inc."},
          :messages=>[]},
          :options=>{:maxResults=>-1, :thumbMaps=>true, :ignoreLatLngInput=>false},
          :results=>
          [{:providedLocation=>{:location=>"denver, co"},
            :locations=>
            [{:street=>"",
              :adminArea6=>"",
              :adminArea6Type=>"Neighborhood",
              :adminArea5=>"Denver",
              :adminArea5Type=>"City",
              :adminArea4=>"Denver County",
              :adminArea4Type=>"County",
              :adminArea3=>"CO",
              :adminArea3Type=>"State",
              :adminArea1=>"US",
              :adminArea1Type=>"Country",
              :postalCode=>"",
              :geocodeQualityCode=>"A5XAX",
              :geocodeQuality=>"CITY",
              :dragPoint=>false,
              :sideOfStreet=>"N",
              :linkId=>"282041090",
              :unknownInput=>"",
              :type=>"s",
              :latLng=>{:lat=>39.738453, :lng=>-104.984853},
              :displayLatLng=>{:lat=>39.738453, :lng=>-104.984853},
              :mapUrl=>
              "http://www.mapquestapi.com/staticmap/v5/map?key=F4imcFajwgOoSfb5H1JvPxU44lY0JCtJ&type=map&size=225,160&locations=39.738453,-104.984853|marker-sm-50318A-1&scalebar=true&zoom=12&rand=766206759"},
              {:street=>"",
                :adminArea6=>"",
                :adminArea6Type=>"Neighborhood",
                :adminArea5=>"",
                :adminArea5Type=>"City",
                :adminArea4=>"Denver County",
                :adminArea4Type=>"County",
                :adminArea3=>"CO",
                :adminArea3Type=>"State",
                :adminArea1=>"US",
                :adminArea1Type=>"Country",
                :postalCode=>"",
                :geocodeQualityCode=>"A4XAX",
                :geocodeQuality=>"COUNTY",
                :dragPoint=>false,
                :sideOfStreet=>"N",
                :linkId=>"282932003",
                :unknownInput=>"",
                :type=>"s",
                :latLng=>{:lat=>39.738453, :lng=>-104.984853},
                :displayLatLng=>{:lat=>39.738453, :lng=>-104.984853},
                :mapUrl=>
                "http://www.mapquestapi.com/staticmap/v5/map?key=F4imcFajwgOoSfb5H1JvPxU44lY0JCtJ&type=map&size=225,160&locations=39.738453,-104.984853|marker-sm-50318A-2&scalebar=true&zoom=9&rand=-942833430"
              }
            ]
          }
        ]
      }
    map = Map.new(map_json)
    json = TrailService.trails_weather_and_directions_by_coordinates(map)
    expect(json).to be_a(Hash)
    expect(json).to have_key(:trails)
    expect(json[:trails]).to be_an(Array)
    expect(json[:trails].first).to be_a(Hash)
    expect(json[:trails].first).to have_key(:name)
    expect(json[:trails].first[:name]).to be_a(String)
    expect(json[:trails].first).to have_key(:summary)
    expect(json[:trails].first[:summary]).to be_a(String)
    expect(json[:trails].first).to have_key(:difficulty)
    expect(json[:trails].first[:difficulty]).to be_a(String)
    expect(json[:trails].first).to have_key(:location)
    expect(json[:trails].first[:location]).to be_a(String)
    expect(json[:trails].first).to have_key(:longitude)
    expect(json[:trails].first[:longitude]).to be_a(Float)
    expect(json[:trails].first).to have_key(:latitude)
    expect(json[:trails].first[:latitude]).to be_a(Float)
  end
end
