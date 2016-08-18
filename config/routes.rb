Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  get 'search', to: 'pages#search'


  resources :users, only: [:show, :edit, :update]

  resources :experiences, only: [:new, :create, :destroy, :edit, :update]


  post '/create_mission_and_offer', to: 'missions#create_mission_and_offer', as: 'create_mission_and_offer'

  resources :missions

  resources :offers, only: [:new, :create, :update]

end
