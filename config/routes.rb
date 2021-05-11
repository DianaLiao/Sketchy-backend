Rails.application.routes.draw do
  get "/pictures/public", to: "pictures#public"

  resources :pictures
  resources :picture_collections
  resources :collections
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
