class Api::V1::ForecastController < ApplicationController
  def index
    forecast = ForecastFacade.forecast_by_coords(query_params[:location])
    if forecast.class == Map
      render body: forecast.messages, status: 404
    else
      render json: ForecastSerializer.new(forecast)
    end
  end

  private

  def query_params
    params.permit(:location)
  end
end
