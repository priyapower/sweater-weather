require "rails_helper"

RSpec.describe IndividualTrail do
  it "creates an indidual trial poro", :vcr do
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
      trail_json =  {:id=>7011837,
      :name=>"City Park Loop",
      :type=>"Recommended Route",
      :summary=>"An easy escape from the hustle and bustle of Denver's city limits.",
      :difficulty=>"green",
      :stars=>3.8,
      :starVotes=>6,
      :location=>"Denver, Colorado",
      :url=>"https://www.hikingproject.com/trail/7011837/city-park-loop",
      :imgSqSmall=>"https://cdn2.apstatic.com/photos/hike/7011510_sqsmall_1554559518.jpg",
      :imgSmall=>"https://cdn2.apstatic.com/photos/hike/7011510_small_1554559518.jpg",
      :imgSmallMed=>
      "https://cdn2.apstatic.com/photos/hike/7011510_smallMed_1554559518.jpg",
      :imgMedium=>"https://cdn2.apstatic.com/photos/hike/7011510_medium_1554559518.jpg",
      :length=>3.3,
      :ascent=>56,
      :descent=>-55,
      :high=>5301,
      :low=>5255,
      :longitude=>-104.9567,
      :latitude=>39.7495,
      :conditionStatus=>"Unknown",
      :conditionDetails=>nil,
      :conditionDate=>"1970-01-01 00:00:00"}
    map = Map.new(map_json)
    trail = IndividualTrail.new(trail_json, map)
    expect(trail).to be_a(IndividualTrail)
    expect(trail.name).to be_a(String)
    expect(trail.summary).to be_a(String)
    expect(trail.difficulty).to be_a(String)
    expect(trail.location).to be_a(String)
    expect(trail.distance_to_trail).to be_a(Float)
  end
end
