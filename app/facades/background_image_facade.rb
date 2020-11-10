class BackgroundImageFacade
  def self.get_image_by_location(location)
    json = BackgroundImageService.get_image_by_location(location)
    BackgroundImage.new(json[:value][0], location)
  end
end
