Rails.application.routes.draw do
  resources :listings
  resources :comments

  devise_for :users

  root to: "listings#index"
  # root to: "home#index"
end
