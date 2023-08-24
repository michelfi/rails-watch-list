class BookmarksController < ApplicationController
  def new # GET
    @bookmark = Bookmark.new
  end
end
