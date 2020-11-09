require "rails_helper"

RSpec.describe ForecastService do
  it "calls external api OpenWeather for details", :vcr do
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
    json = ForecastService.forecast_by_coords(map)
    expect(json).to be_a(Hash)
    expect(json).to have_key(:current)
    expect(json[:current]).to be_a(Hash)
    expect(json[:current][:dt]).to be_an(Integer)
    expect(Time.at(json[:current][:dt])).to be_a(Time)
    expect(json[:current][:sunrise]).to be_an(Integer)
    expect(Time.at(json[:current][:sunrise])).to be_a(Time)
    expect(json[:current][:sunset]).to be_an(Integer)
    expect(Time.at(json[:current][:sunset])).to be_a(Time)
    expect(json[:current][:temp]).to be_a(Float)
    expect(json[:current][:feels_like]).to be_a(Float)
    expect(json[:current][:humidity]).to be_a(Numeric)
    expect(json[:current][:uvi]).to be_a(Numeric)
    expect(json[:current][:visibility]).to be_a(Numeric)
    expect(json[:current][:weather][0][:description]).to be_a(String)
    expect(json[:current][:weather][0][:icon]).to be_a(String)
  end
end
