Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  resources :users, only: [:edit, :show, :update]
  get 'search', to: 'pages#search'
  root to: 'products#index'
  resources :categories, only: [:new, :create]
  resources :products do
    resources :likes, only: [:create, :destroy, :update]
  end

end
