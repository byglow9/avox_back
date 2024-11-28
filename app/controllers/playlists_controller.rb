class PlaylistsController < ApplicationController
    before_action :set_playlist, only: [:show, :edit, :update, :destroy]
  
    # Exibir todas as playlists
    def index
      @playlists = Playlist.all
    end
  
    # Exibir uma playlist específica
    def show
    end
  
    # Formulário de criação de nova playlist
    def new
      @playlist = Playlist.new
    end
  
    # Criar nova playlist
    def create
      @playlist = Playlist.new(playlist_params)
      if @playlist.save
        redirect_to @playlist, notice: 'Playlist criada com sucesso!'
      else
        render :new
      end
    end
  
    # Formulário de edição de playlist
    def edit
    end
  
    # Atualizar playlist
    def update
      if @playlist.update(playlist_params)
        redirect_to @playlist, notice: 'Playlist atualizada com sucesso!'
      else
        render :edit
      end
    end
  
    # Excluir playlist
    def destroy
      @playlist.destroy
      redirect_to playlists_url, notice: 'Playlist excluída com sucesso!'
    end
  
    private
  
    # Definir a playlist que será manipulada nas ações
    def set_playlist
      @playlist = Playlist.find(params[:id])
    end
  
    # Definir os parâmetros permitidos
    def playlist_params
      params.require(:playlist).permit(:nome, :descricao)
    end
end
  