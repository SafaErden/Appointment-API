class Api::V1::UsersController < ApplicationController
  before_action :authorized, except: %i[create login]
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: { user: @user.id, token: token }
    else
      render json: { error: @user.errors.full_messages[0] }
    end
  end

  def login
    @user = User.find_by(username: params[:username])

    if @user&.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user.id, token: token }
    else
      render json: { error: 'Invalid Username or Password' }
    end
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end
