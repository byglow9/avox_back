class MusicasController < ApplicationController
    before_action :set_musica, only: [:show, :edit, :update, :destroy]
  
    # Exibir todas as músicas
    def index
      @musicas = Musica.all
    end
  
    # Exibir uma música específica
    def show
    end
  
    # Formulário de criação de nova música
    def new
      @musica = Musica.new
    end
  
    # Criar nova música
    def create
      @musica = Musica.new(musica_params)
      if @musica.save
        redirect_to @musica, notice: 'Música criada com sucesso!'
      else
        render :new
      end
    end
  
    # Formulário de edição de música
    def edit
    end
  
    # Atualizar música
    def update
      if @musica.update(musica_params)
        redirect_to @musica, notice: 'Música atualizada com sucesso!'
      else
        render :edit
      end
    end
  
    # Excluir música
    def destroy
      @musica.destroy
      redirect_to musicas_url, notice: 'Música excluída com sucesso!'
    end
  
    private
  
    # Definir o músico que será manipulado nas ações
    def set_musica
      @musica = Musica.find(params[:id])
    end
  
    # Definir os parâmetros permitidos
    def musica_params
      params.require(:musica).permit(:nome, :artista, :album, :genero, :arquivo)
    end
end
  