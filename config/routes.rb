Hansode::Application.routes.draw do
  resources :estimates
  resources :users

  get 'logout' => 'sessions#destroy', as: :logout
  get 'login' => 'sessions#new', as: :login
  get 'signup' => 'users#new', as: :signup
end
