class Current
  attr_reader :datetime,
              :sunrise,
              :sunset,
              :temp,
              :feels_like,
              :humidity,
              :uvi,
              :conditions,
              :icon

  def initialize(attributes)
    @datetime = Time.at(attributes[:dt])
    @sunrise = Time.at(attributes[:sunrise])
    @sunset = Time.at(attributes[:sunset])
    @temp = "#{attributes[:temp]}" + " F"
    @feels_like = "#{attributes[:feels_like]}" + " F"
    @humidity = attributes[:humidity]
    @uvi = attributes[:uvi]
    @conditions = attributes[:weather][0][:description]
    @icon = attributes[:weather][0][:icon]
  end
end
