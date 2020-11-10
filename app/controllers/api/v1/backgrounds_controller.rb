class Api::V1::BackgroundsController < ApplicationController
  def index
    location = query_params[:location]
    background_image = BackgroundImageFacade.get_image_by_location(location)
    if background_image.class == Map
      render body: background_image.messages, status: 404
    else
      render json: ImageSerializer.new(background_image)
    end
  end

  private

  def query_params
    params.permit(:location)
  end
end
