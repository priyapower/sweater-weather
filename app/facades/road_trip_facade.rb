class RoadTripFacade
  def self.create_trip(origin, destination)
    poro_details = MapFacade.get_trip_info(origin, destination)
    if poro_details.class == Array
      RoadTrip.new(poro_details)
    elsif poro_details[:info][:statuscode] == 402
      RoadTrip.new(poro_details, origin, destination)
    else
      poro_details[:info][:messages][0]
    end
  end
end
