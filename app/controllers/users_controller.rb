class UsersController < ApplicationController

  def create
    user = User.new
    user.email = params[:email]
    user.password = params[:password]
    if user.save
      data = ['token']
      data << user.bookmarks
      render json: data
    else
      data = ['error']
      render json: data
    end
  end
end
