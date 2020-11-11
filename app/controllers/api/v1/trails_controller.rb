class Api::V1::TrailsController < ApplicationController
  def index
    location = query_params[:location]
    map = MapFacade.get_coords_by_loc(location)
    hike_forecast = ForecastFacade.forecast_for_hike(map)
    trail = TrailFacade.trails_weather_and_directions_by_coordinates(location, map, hike_forecast)
    render json: TrailSerializer.new(trail)
  end

  private

  def query_params
    params.permit(:location)
  end
end
