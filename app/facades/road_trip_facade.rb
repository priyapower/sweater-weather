class RoadTripFacade
  def self.create_trip(origin, destination)
    poro_details = MapFacade.get_trip_info(origin, destination)
    RoadTrip.new(poro_details)
  end
end
