Rails.application.routes.draw do
  resources :bookings, only: [:show, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "bookings#new"
end
