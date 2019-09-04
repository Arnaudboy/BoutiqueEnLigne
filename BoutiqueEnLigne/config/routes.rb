Rails.application.routes.draw do
  get 'orders/show'
  devise_for :users
  resources :carts
  resources :items
  resources :orders
  root "items#index"
end
