Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/create'
  get 'reservations/destroy'
  get 'reservations/edit'
  get 'reservations/update'
  get 'reservations/show'
  devise_for :users
  root to: 'pages#home'

  resources :reservations, only: [:new, :create, :update, :destroy, :show]
end
