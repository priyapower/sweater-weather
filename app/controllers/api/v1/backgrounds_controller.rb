class Api::V1::BackgroundsController < ApplicationController
  def index
    location = query_params[:location]
    # BASIC
    # - makes call to image api that passes location as query
    background_image = BackgroundImageFacade.get_image_by_location(location)
    render json: BackgroundImageSerializer.new(background_image)
    # EXTENSION
    # - first gets current weather and time at location
    # - weather only wants summary/description
    # - time needs it in human speak: morning, afternoon, evening, night
        # SEE DESTINATION PLANNER FOR GETTING WEATHER BY CITY,STATE instead of LAT/LONG
        # map = MapFacade.get_coords_by_loc(location)
        # forecast = ForecastFacade.forecast_by_coords(map)
  end

  private

  def query_params
    params.permit(:location)
  end
end
