Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  resources :categories, only: [:new, :create]
  resources :products
end
