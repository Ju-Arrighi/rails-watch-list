class BookmarksController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_list, only: [:new, :create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmarks_params)
    @bookmark.list = @list
    @bookmark.save
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end

  def set_list
    @list = List.find(params[:list_id])
  end

  def set_bookmark
    @bookmark = Bookmark.find(params[:bookmark_id])
  end
end
