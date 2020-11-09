class HikingForecast
  attr_reader :temperature,
              :summary

  def initialize(attributes)
    @temperature = "#{attributes[:temp]}" + " F"
    @summary = attributes[:weather][0][:description]
  end
end
