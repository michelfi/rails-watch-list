class BookmarksController < ApplicationController
  def new # GET
    @bookmark = Bookmark.new
  end

  def create # POST
    @bookmark = Bookmark.new(bookmark_params)
    if @bookmark.save
      redirect_to root_path, notice: "list was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to root_path, notice: 'Bookmark was successfully destroyed.'
  end


  private

  def bookmark_params
    params.require(:bookmark).permit(:content)
  end

end
