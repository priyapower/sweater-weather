class Map
  attr_reader :id,
              :longitude,
              :latitude,
              :status_code,
              :messages

  def initialize(attributes)
    @id = nil
    @status_code = attributes[:info][:statuscode]
    @messages = attributes[:info][:messages]
    if !attributes[:results][0][:locations][0].nil?
      @longitude = attributes[:results][0][:locations][0][:latLng][:lng]
      @latitude = attributes[:results][0][:locations][0][:latLng][:lat]
    end
  end
end
