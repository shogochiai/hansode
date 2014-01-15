Hansode::Application.routes.draw do

  root to: 'dashboard#index'

  resources :estimates
  resources :contacts
  resources :clients

  #
  # Authentication Routes
  #
  get 'logout' => 'sessions#destroy', as: :logout
  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'signup' => 'users#new', as: :signup
  post 'signup' => 'users#create'
end
