Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get 'search', to: 'pages#search'

  resources :users, only: [:show, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :experiences, only: [:new, :create, :destroy, :edit, :update]


  resources :missions do
    resources :offers, only: [:create, :update]
  end
end
