class AlbunsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  def index
    @albuns = Album.all
  end

  def show
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to @album, notice: 'Álbum criado com sucesso!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @album.update(album_params)
      redirect_to @album, notice: 'Álbum atualizado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @album.destroy
    redirect_to albuns_url, notice: 'Álbum excluído com sucesso!'
  end

  private

  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:nome, :descricao, :data_lancamento)
  end
end
