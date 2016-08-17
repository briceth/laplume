Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: 'pages#home'
  get 'search', to: 'pages#search'

  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :experiences, only: [:new, :create, :destroy, :edit, :update]


  resources :missions do
    resources :offers, only: [:new, :create, :destroy, :edit, :update]
  end
end
