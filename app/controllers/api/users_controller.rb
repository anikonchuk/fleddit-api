class Api::PostsController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      render json: user
    else
      render json: { message: user.errors }, status: 400
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
