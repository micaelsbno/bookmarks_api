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

  def edit
  end

end