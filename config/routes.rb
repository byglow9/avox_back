Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Autenticação Devise
  devise_for :usuarios, controllers: {
    sessions: 'usuarios/sessions',
    registrations: 'usuarios/registrations',
    passwords: 'usuarios/passwords'
  }

  # Perfil do usuário autenticado
  resource :usuarios, only: [:show, :update]

  # CRUD completo para recursos principais
  resources :musicas
  resources :playlists
  resources :generos
  resources :albuns
  resources :artistas

  # Ações específicas para favoritos e músicas em playlists
  resources :favoritos, only: [:index, :create, :destroy]
  resources :playlist_musicas, only: [:create, :destroy]

  # Autenticação personalizada
  namespace :users do
    post 'sign_in', to: 'sessions#create'
    delete 'sign_out', to: 'sessions#destroy'
  end

  # Rota raiz da API
  root to: proc { [200, {}, ['API is running']] }
end
