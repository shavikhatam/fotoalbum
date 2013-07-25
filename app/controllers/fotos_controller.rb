class FotosController < ApplicationController


  def index
    @fotos = Foto.all
  end


  def create
    foto = Foto.new params[:foto].permit(:title, :image, :album_id)
    foto.save
    redirect_to foto.album, notice: 'foto successfully added'
  end


  def show

  end


  def edit

  end


  def update

  end


  def destroy

  end


end
