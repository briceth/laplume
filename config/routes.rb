Rails.application.routes.draw do
  get 'messages/new'

  get 'messages/create'

  mount Attachinary::Engine => "/attachinary"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get 'search', to: 'pages#search'


  resources :users, only: [:show, :edit, :update] do
    resources :offers, only: [:new, :create]
  end

  resources :offers, only: [:update, :show, :destroy]

  resources :experiences, only: [:new, :create, :destroy, :edit, :update]

  resources :missions

  resources :messages, only: [:new, :create]


end
