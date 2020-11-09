class TrailService
  def self.trails_weather_and_directions_by_coordinates(map)
    response = conn.get("/data/get-trails") do |r|
      r.params['lat'] = map.latitude
      r.params['lon'] = map.longitude
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new "https://www.hikingproject.com" do |f|
      f.params['sort'] = 'distance'
      f.params['key'] = ENV['HIKING_PROJECT_KEY']
    end
  end
end
