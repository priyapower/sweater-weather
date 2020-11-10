class Api::V1::RoadTripController < ApplicationController
  def create
    authenticated_user = User.find_by(api_key: road_trip_params[:api_key])
    if authenticated_user
      road_trip = RoadTripFacade.create_trip(road_trip_params[:origin], road_trip_params[:destination])
      render json: RoadtripSerializer.new(road_trip)
    else
      render body: nil, status: 404 # Put in custom error section
    end
  end

  private

  def road_trip_params
    params.permit(:origin, :destination, :api_key)
  end
end
