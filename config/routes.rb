Hansode::Application.routes.draw do
  root to: 'estimates#index'

  resources :estimates

  #
  # Authentication Routes
  #
  get 'logout' => 'sessions#destroy', as: :logout
  match 'login' => 'sessions#create', as: :login, via: %w[get post]
  get 'signup' => 'users#new', as: :signup
  post 'signup' => 'users#create'
end
