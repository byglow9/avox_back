class ArtistasController < ApplicationController
  before_action :set_artista, only: [:show, :edit, :update, :destroy]

  def index
    @artistas = Artista.all
  end

  def show
  end

  def new
    @artista = Artista.new
  end

  def create
    @artista = Artista.new(artista_params)
    if @artista.save
      redirect_to @artista, notice: 'Artista criado com sucesso!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @artista.update(artista_params)
      redirect_to @artista, notice: 'Artista atualizado com sucesso!'
    else
      render :edit
    end
  end

  def destroy
    @artista.destroy
    redirect_to artistas_url, notice: 'Artista excluído com sucesso!'
  end

  private

  def set_artista
    @artista = Artista.find(params[:id])
  end

  def artista_params
    params.require(:artista).permit(:nome, :bio)
  end
end
