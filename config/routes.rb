Rails.application.routes.draw do
  root 'flights#index'
  post 'flights' => 'flights#index'

  resources :bookings

  resources :flights

  default_url_options :host => "localhost:3000"
end