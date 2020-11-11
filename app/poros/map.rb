class Map
  attr_reader :id,
              :longitude,
              :latitude

  def initialize(attributes)
    @id = nil
    @longitude = attributes[:results][0][:locations][0][:latLng][:lng]
    @latitude = attributes[:results][0][:locations][0][:latLng][:lat]
  end
end
