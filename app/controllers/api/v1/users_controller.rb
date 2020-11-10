class Api::V1::UsersController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def create
    ActiveRecord::Base.connection.reset_pk_sequence!('users')
    new_user = User.new(user_params)
    if new_user.save
      render json: UsersSerializer.new(new_user)
    else
      render body: nil, status: 404
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :api_key)
  end
end
