Rails.application.routes.draw do
  root to: 'pages#home'

  resources :reservation, only: [:new, :create, :update, :destroy, :show]
end
