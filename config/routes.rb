Rails.application.routes.draw do
  resources :customers, only: [:index, :show, :create]
  resources :vehicles,  only: [:index, :show, :create]
  resources :bookings, only: [:index, :show, :destroy, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
