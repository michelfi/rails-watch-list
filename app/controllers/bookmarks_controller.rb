class BookmarksController < ApplicationController
  def new # GET
    @bookmark = Bookmark.new
  end

  def create # POST
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to @bookmark, notice: "list was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:name)
  end

end
