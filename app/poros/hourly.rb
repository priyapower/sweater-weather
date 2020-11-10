class Hourly
  attr_reader :time,
              :temp,
              :wind_speed,
              :wind_direction,
              :conditions,
              :icon

  def initialize(attributes)
    @time = Time.at(attributes[:dt]).strftime("%H:%M:%S")
    @temp = attributes[:temp]
    @wind_speed = "#{attributes[:wind_speed]}" + " mph"
    @wind_direction = convert_degrees_to_direction(attributes[:wind_deg])
    @conditions = attributes[:weather][0][:description]
    @icon = attributes[:weather][0][:icon]
  end

  def convert_degrees_to_direction(degree)
    selector = (((degree - 11.25) / 22.5) + 0.5).round
    direction_array = ["N", "NNE", "NE", "ENE", "E", "ESE",  "SE",  "SSE", "S", "SSW", "SW", "WSW", "W", "WNW", "NW", "NNW"]
    if degree < 11.25
      direction_array[selector.abs - 1]
    else
      direction_array[selector.abs]
    end
  end
end
