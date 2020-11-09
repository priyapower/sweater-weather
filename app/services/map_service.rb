class MapService
  def self.get_coords_by_loc(location)
    response = conn.get("/geocoding/v1/address") do |r|
      r.params['location'] = location
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.distance_to_trails(start_longitude, start_latitude, trail_longitude, trail_latitude)
    response = conn.get("/directions/v2/route") do |r|
      r.params['from'] = "#{start_latitude},#{start_longitude}"
      r.params['to'] = "#{trail_latitude},#{trail_longitude}"
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new("http://www.mapquestapi.com") do |f|
      f.params['key'] = ENV['MAPQUEST_KEY']
    end
  end
end
