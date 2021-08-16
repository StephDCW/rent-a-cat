Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :reservation, only: [:new, :create, :update, :destroy, :show]
end
