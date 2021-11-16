Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :tours, only: %i[indew show new create] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: :destroy
end
