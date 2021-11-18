Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  devise_for :users
  root to: 'pages#home'

  resources :tours, only: %i[index show new create] do
    resources :bookings, only: %i[create]
  end
  resources :bookings, only: %i[index] do
    resources :reviews, only: %i[new create]
  end
end
