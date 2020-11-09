class Api::V1::ForecastController < ApplicationController
  def index
    location = query_params[:location]
    map = MapFacade.get_coords_by_loc(location)
    forecast = ForecastFacade.forecast_by_coords(map)
    render json: ForecastSerializer.new(forecast)
    binding.pry
  end

  private

  def query_params
    params.permit(:location)
  end
end
