class MapFacade
  def self.get_coords_by_loc(location)
    json = MapService.get_coords_by_loc(location)
    Map.new(json)
  end
end
