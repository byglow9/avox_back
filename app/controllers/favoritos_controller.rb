class FavoritosController < ApplicationController
  before_action :authenticate_user!

  def create
    @musica = Musica.find(params[:musica_id])
    current_user.favoritos << @musica
    redirect_to musicas_path, notice: 'Música adicionada aos favoritos.'
  end

  def destroy
    @musica = Musica.find(params[:musica_id])
    current_user.favoritos.delete(@musica)
    redirect_to musicas_path, notice: 'Música removida dos favoritos.'
  end
end
