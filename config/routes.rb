Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD

=======
>>>>>>> 918dbef2eeda34bdc1b8b8e5bee973b645481c1a
  resources :offers
  resources :reservations, only: [:new, :create, :update, :destroy, :show]
end
