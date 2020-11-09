class MapService
  def self.get_coords_by_loc(location)
    response = conn.get("/geocoding/v1/address") do |r|
      r.params['location'] = location
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("http://www.mapquestapi.com") do |f|
      f.params['key'] = ENV['MAPQUEST_KEY']
    end
  end
end
