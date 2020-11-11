class BackgroundImageFacade
  def self.get_image_by_location(location)
    forecast = ForecastFacade.forecast_by_coords(location)
    if forecast.class == Map
      forecast
    else
      time = time_in_human_speak(forecast.current_weather.datetime)
      weather = forecast.current_weather.conditions
      query = "#{time} #{weather} #{location}"
      json = BackgroundImageService.get_image_by_location(query)
      BackgroundImage.new(json[:value][0], location)
    end
  end

  def self.time_in_human_speak(data)
    if data.hour.between?(5, 10)
      'morning'
    elsif data.hour.between?(11, 17)
      'afternoon'
    elsif data.hour.between?(18, 21)
      'evening'
    else data.hour.between?(0, 4) || data.hour.between?(22, 23)
      'night'
    end
  end
end
