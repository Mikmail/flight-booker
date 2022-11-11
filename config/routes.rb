Rails.application.routes.draw do
  root 'flights#index'
  post 'flights' => 'flights#index'

  resources :bookings, only: [:new, :create, :show]

  resources :flights
end