Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers
  resources :reservations, only: [:new, :create, :update, :destroy, :show]
end
