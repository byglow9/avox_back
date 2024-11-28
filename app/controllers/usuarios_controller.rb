class UsuariosController < ApplicationController
  # Autenticação para ações protegidas
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]

  # Callback para encontrar o usuário
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  # Callback para verificar se o usuário tem permissão para editar
  before_action :authorize_usuario, only: [:edit, :update, :destroy]

  def index
    @usuarios = Usuario.all
  end

  def show
    # @usuario já definido no callback
  end

  def new
    @usuario = Usuario.new
  end

  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      redirect_to @usuario, notice: 'Usuário criado com sucesso!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    # @usuario já definido no callback
  end

  def update
    if @usuario.update(usuario_params)
      redirect_to @usuario, notice: 'Usuário atualizado com sucesso!'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @usuario.destroy
    redirect_to usuarios_path, notice: 'Usuário excluído com sucesso!'
  end

  private

  # Define o usuário com base no ID
  def set_usuario
    @usuario = Usuario.find_by(id: params[:id])
    return if @usuario

    redirect_to usuarios_path, alert: 'Usuário não encontrado.'
  end

  # Verifica se o usuário atual tem permissão para editar
  def authorize_usuario
    return if current_user == @usuario

    redirect_to root_path, alert: 'Você não tem permissão para realizar essa ação.'
  end

  # Define os parâmetros permitidos
  def usuario_params
    params.require(:usuario).permit(:nome, :email, :password, :password_confirmation)
  end
end
