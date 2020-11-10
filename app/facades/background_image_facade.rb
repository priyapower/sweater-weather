class BackgroundImageFacade
  def self.get_image_by_location(location)
    forecast = ForecastFacade.forecast_by_coords(location)
    time = time_in_human_speak(forecast.current_weather.datetime)
    weather = forecast.current_weather.conditions
    query = "#{time} #{weather} #{location}"
    json = BackgroundImageService.get_image_by_location(query)
    BackgroundImage.new(json[:value][0], location)
  end

  def self.time_in_human_speak(data)
    if data.hour >= 6 || data.hour < 11
      'morning'
    elsif data.hour >= 11 || data.hour < 18
      'afternoon'
    elsif data.hour >= 18 || data.hour < 23
      'evening'
    else data.hour >=23 || data.hour < 6
      'night'
    end
  end
end





# t = Time.new
# puts "Good %s" % [(t.to_i/43199).even? ? "morning" : "afternoon"]
# Good morning
#
# t += 43199
# puts "Good %s" % [(t.to_i/43199).even? ? "morning" : "afternoon"]
# Good afternoon
