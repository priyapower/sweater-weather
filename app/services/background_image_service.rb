class BackgroundImageService
  def self.get_image_by_location(query)
    response = conn.get("/v7.0/images/search") do |r|
      r.params['q'] = query
      r.params['count'] = 1
      r.params['color'] = 'colorOnly'
      r.params['imageType'] = 'photo'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new("https://api.bing.microsoft.com") do |f|
      f.headers['Ocp-Apim-Subscription-Key'] = ENV['BING_KEY']
    end
  end
end
