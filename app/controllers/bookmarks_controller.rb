class BookmarksController < ApplicationController

  def index
    user = User.find_by(id: params[:user_id])
    if user
      render json: user.bookmarks
    else
      render json: ['error']
    end
  end

  def create
    if Bookmark.create(
      url: params[:url],
      title: params[:title],
      folder: params[:folder],
      user_id: params[:user_id],
      finished: false,
      rating: 0,
      index: params[:index]
    )
      user = User.find_by(id: params[:user_id])
      data = ['token']
      data << user.bookmarks
      data << params[:user_id]
      render json: data
    else
      render json: ['error']
    end

  end

  def update
    bookmark = Bookmark.find_by(id: params[:id])
    if bookmark
      user = bookmark.user
      data = ['token']
      data << user.bookmarks
      data << user.id
      bookmark.index = params[:index]
      bookmark.finished = params[:finished]
      bookmark.save
      render json: data
    end
  end

  def destroy
    bookmark = Bookmark.find_by(id: params[:id])
    if bookmark
      bookmark.destroy
      user = bookmark.user
      data = ['token']
      data << user.bookmarks
      render json: data
    end
  end

end