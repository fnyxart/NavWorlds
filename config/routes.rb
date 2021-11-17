Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tours, only: %i[index show new create] do
    resources :bookings, only: %i[create]
  end
  resources :bookings, only: %i[destroy index]
end
