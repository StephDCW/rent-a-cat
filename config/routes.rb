Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers do
    resources :reservations, only: :create
  end
  resources :reservations, only: [:destroy, :new, :edit, :update, :show, :index]
end
