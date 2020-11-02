class Api::V1::UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: @user.errors.full_messages[0] }
    end
  end

  def login
    @user = User.find_by(user_params)

    if @user&.authenticate(params[:password])
      token = encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: 'Invalid Username or Password' }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
