class Api::V1::UsersController < ApplicationController
  def create
    ActiveRecord::Base.connection.reset_pk_sequence!('users')
    new_user = User.new(user_params)
    if new_user.save
      render json: UsersSerializer.new(new_user), status: 201
    else
      render body: generate_error(new_user), status: 400
    end
  end

  private

  def user_params
    params.permit(:email, :password, :password_confirmation, :api_key)
  end
end
