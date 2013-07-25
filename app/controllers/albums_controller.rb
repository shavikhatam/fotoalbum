class AlbumsController < ApplicationController

  def index
   @albums = Album.all
  end


  def new
    @album = Album.new
  end


  def create
    @album = Album.new params[:album].permit(:title)
    if @album.save
      redirect_to @album, notice: 'album created successfully'
    else
      render action: 'new'
    end
  end


  def show
    @album = Album.find params[:id]
  end


  def edit
    @album = Album.find params[:id]
  end


  def update
    @album = Album.find params[:id]
    if @album.update_attributes(params[:album].permit(:title))
      redirect_to @album, notice: 'album saved successfully'
    else
      render action: 'edit'
    end
  end


  def destroy
    album = Album.find params[:id]
    album.destroy
    redirect_to albums_path, notice: 'album and its content successfully deleted'
  end


end
