require 'rails_helper'

RSpec.describe UsuariosController, type: :controller do
  let(:usuario) { Usuario.create!(name: "João", email: "joao@example.com", password: "password") }

  before do
    sign_in usuario # Garante que o usuário esteja autenticado
  end

  describe "GET #show" do
    it "returns a successful response" do
      get :show, params: { id: usuario.id }
      expect(response).to be_successful
    end
  end
end
