Rails.application.routes.draw do
  resources :customer_storages
  resources :storage_units
  resources :delivery_services, only:[:index, :show]
  resources :admins
  resources :customers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/signup", to: "customers#create"
  post "/login", to: "auth#create"
  delete "/logout", to: "auth#destroy"
  get "/me", to: "customers#show"

  #admin routes
  get "/admin", to: "admins#show"
  post "/admin_login", to: "admins#authenticate"
  post "/admin_signup", to: "admins#create"

  #custom routes
  #get "/locations", to: "storage_units#store_locations"
end
