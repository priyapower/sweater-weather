class BackgroundImage
  attr_reader :id,
              :location,
              :image_url,
              :credit

  def initialize(attributes, location)
    @id = nil
    @location = location
    @image_url = attributes[:contentUrl]
    @credit = {
      source: attributes[:hostPageUrl],
      author: attributes[:hostPageDomainFriendlyName],
      logo: attributes[:hostPageFavIconUrl]
      }
  end
end
