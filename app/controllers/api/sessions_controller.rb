class Api::SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user
    else
      render json: { message: "Something went wrong. Please try again" }, status: 400
    end
  end

  def destroy
    session.clear
    render json: { message: "You are now logged out." }, status: 204
  end


end
