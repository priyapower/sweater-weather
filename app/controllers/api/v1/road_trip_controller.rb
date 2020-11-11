class Api::V1::RoadTripController < ApplicationController
  def create
    authenticated_user = User.find_by(api_key: road_trip_params[:api_key])
    if authenticated_user
      road_trip = RoadTripFacade.create_trip(road_trip_params[:origin], road_trip_params[:destination])
      if road_trip.class == RoadTrip
        render json: RoadtripSerializer.new(road_trip)
      else
        render body: "ERROR: #{road_trip}", status: 400
      end
    else
      render body: 'ERROR: Invalid Api Key', status: 401
    end
  end

  private

  def road_trip_params
    params.permit(:origin, :destination, :api_key)
  end
end
