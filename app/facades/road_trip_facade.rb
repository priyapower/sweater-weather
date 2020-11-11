class RoadTripFacade
  def self.create_trip(origin, destination)
    poro_details = MapFacade.get_trip_info(origin, destination)
    if poro_details.class == Array
      RoadTrip.new(poro_details)
    else
      poro_details
    end
  end
end
