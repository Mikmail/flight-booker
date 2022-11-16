Rails.application.routes.draw do
  root 'flights#index'
  post 'flights' => 'flights#index'

  resources :bookings

  resources :flights
end