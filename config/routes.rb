Rails.application.routes.draw do
  get 'categories/new'

  get 'categories/create'

  get 'categories/destroy'

  devise_for :users
  get 'search', to: 'pages#search'
  root to: 'products#index'
  resources :categories, only: [:new, :create]
  resources :products do
    resources :likes, only: [:create, :destroy]
  end

end
