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
      bookmark.index = params[:index]
      bookmark.save
    end
  end

  def destroy
    bookmark = Bookmark.find_by(id: params[:id])
    if bookmark
      bookmark.destroy
    end
  end

end