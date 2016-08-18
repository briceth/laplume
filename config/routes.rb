Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get 'search', to: 'pages#search'

  resources :users, only: [:show, :edit, :update]

  resources :experiences, only: [:new, :create, :destroy, :edit, :update]

  resources :missions

  resources :offers, only: [:new, :create, :update]

end
