class Api::V1::UsersController < ApplicationController
  def sign_up
    @user = User.find_or_initialize_by(name: user_params[:name])

    if @user.save
      render json: {
        status: { code: 200, message: 'signed up successfuly',
                  data: @user }
      }, status: :ok
    else
      render json: { error: @user.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  def login
    @user = User.find_by(name: user_params[:name])

    if @user
      render json: {
        status: { code: 200, message: 'signed in successfuly', data: @user }
      }, status: :ok
    else
      render json: { error: 'User not found' }, status: :not_found
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
