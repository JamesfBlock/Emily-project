Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  resources :users, only: [:edit, :show, :update]
  get 'search', to: 'pages#search'
  root to: 'pages#home'
  resources :categories, only: [:new, :create]

  resources :products do
    resources :likes
  end

end
