class PlaylistMusicasController < ApplicationController
  def create
    @playlist = Playlist.find(params[:playlist_id])
    @musica = Musica.find(params[:musica_id])

    if @playlist.musicas << @musica
      redirect_to @playlist, notice: 'Música adicionada à playlist!'
    else
      redirect_to @playlist, alert: 'Não foi possível adicionar a música à playlist.'
    end
  end

  def destroy
    @playlist = Playlist.find(params[:playlist_id])
    @musica = Musica.find(params[:musica_id])

    if @playlist.musicas.delete(@musica)
      redirect_to @playlist, notice: 'Música removida da playlist.'
    else
      redirect_to @playlist, alert: 'Não foi possível remover a música da playlist.'
    end
  end
end
