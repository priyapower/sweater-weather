class Api::V1::SessionsController < ApplicationController
  def create
    registered_user = User.find_by(email: sessions_params[:email])
    if registered_user && registered_user.authenticate(sessions_params[:password])
      render json: UsersSerializer.new(registered_user), status: 200
    else
      render body: nil, status: 404
      # render json: user.error_message(user_params), status: 401 # Needs a method in application controller/user model for error meesages
    end
  end

  private

  def sessions_params
    params.permit(:email, :password)
  end
end
