class BookmarksController < ApplicationController

  def create
    Bookmark.create(
      url: params[:url], 
      title: params[:title],
      folder: params[:folder],
      user_id: params[:user_id],
      finished: false,
      rating: 0,
      index: params[:index]
    )
  end

  def update
    bookmark = Bookmark.find_by(id: params[:id])
    if bookmark
      user = bookmark.user
      data = ['token']
      data << user.bookmarks
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