class UsuariosController < ApplicationController
  before_action :authenticate_usuario!  # Garantir que o usuário esteja autenticado
  
  # Mostrar o perfil do usuário
  def show
    @usuario = current_usuario
    render json: @usuario
  end

  # Editar o perfil do usuário
  def edit
    @usuario = current_usuario
    render json: @usuario
  end

  # Atualizar o perfil do usuário
  def update
    @usuario = current_usuario

    if @usuario.update(usuario_params)
      render json: { message: 'Perfil atualizado com sucesso!' }, status: :ok
    else
      render json: { errors: @usuario.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  # Permitir parâmetros do usuário
  def usuario_params
    params.require(:usuario).permit(:email, :password, :password_confirmation)
  end
end
