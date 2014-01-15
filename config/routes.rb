Hansode::Application.routes.draw do

  root to: 'dashboard#index'

  resources :estimates
  resources :contacts
  resources :clients

  #
  # Authentication Routes
  #
  get 'logout' => 'sessions#destroy', as: :logout
  match 'login' => 'sessions#create', as: :login, via: %w[get post]
  get 'signup' => 'users#new', as: :signup
  post 'signup' => 'users#create'
end
