class SessionsController < ApplicationController
  
  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      data = ['token']
      data << user.bookmarks
      render json: data
    else
      data = ['error']
      render json: data
    end
  end

  def destroy
    session[:user_id] = nil
  end

end
