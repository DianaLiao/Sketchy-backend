Rails.application.routes.draw do
  get "/pictures/public", to: "pictures#public"
  post "/users/login", to: "users#login"

  get "/users/:id/collections", to: "collections#user_collections"

  resources :pictures
  resources :picture_collections
  resources :collections
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
