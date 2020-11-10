require "rails_helper"

RSpec.describe ForecastFacade, :vcr do
  it "aggragates data for forecast by coordinates (also tests subsequent helper methods)" do
    # This test is having a vcr error where it always tries to rewrite it.
    # No other test has this issue, so this one won't have live data testing since this is done in the Poro and Service Specs
    location = 'denver, co'
    map = MapFacade.get_coords_by_loc(location)
    forecast = ForecastFacade.forecast_by_coords(map)
    expect(forecast).to be_a(Forecast)
    expect(forecast.id).to be_nil
    expect(forecast.current_weather).to be_a(Current)
    expect(forecast.current_weather.conditions).to be_a(String)
    expect(forecast.daily_weather).to be_a(Array)
    expect(forecast.daily_weather.count).to eq(5)
    expect(forecast.daily_weather.first).to be_a(Daily)
    expect(forecast.daily_weather.first.conditions).to be_a(String)
    expect(forecast.hourly_weather).to be_a(Array)
    expect(forecast.hourly_weather.count).to eq(8)
    expect(forecast.hourly_weather.first).to be_an(Hourly)
  end

  xit "aggragates data for weather by hiking information" do
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
    hiking_forecast = ForecastFacade.forecast_for_hike(map)
    expect(hiking_forecast).to be_a(HikingForecast)
    expect(hiking_forecast.temperature).to be_a(String)
    expect(hiking_forecast.summary).to be_a(String)
  end
end
