class Api::V1::ForecastController < ApplicationController
  def index
    forecast = ForecastFacade.forecast_by_coords(query_params[:location])
    render json: ForecastSerializer.new(forecast)
  end

  private

  def query_params
    params.permit(:location)
  end
end
