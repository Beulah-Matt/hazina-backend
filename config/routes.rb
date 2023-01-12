Rails.application.routes.draw do
  resources :storage_units
  resources :delivery_services
  resources :admins
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/signup", to: "customers#create"
  post "/login", to: "auth#create"
  delete "/logout", to: "auth#destroy"
  get "/me", to: "customers#show"
end
