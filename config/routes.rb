Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  resources :users, only: [:edit, :show, :update, :index]
  get 'search', to: 'pages#search'
  root to: 'pages#home'
  resources :rooms, only: [:new, :create, :show]
  resources :companies, only: [:new, :create, :show, :edit, :update]

  resources :products do
    resources :likes
  end

end
