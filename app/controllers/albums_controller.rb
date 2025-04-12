class AlbumsController < ApplicationController
  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)

    if @album.save
      flash[:notice] = "アルバム作成に成功しました"
      redirect_to @album
    else
      flash.now[:alert] = "アルバム作成に失敗しました"
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])

    if @album.update(album_params)
      flash[:notice] = "アルバムを更新しました"
      redirect_to @album
    else
      flash.now[:danger] = "アルバムの更新に失敗しました"
      render :edit
    end
  end

  private

  def album_params
    params.require(:album).permit(:title, :description, photos: [])
  end
end
