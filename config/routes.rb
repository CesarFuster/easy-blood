Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/profile", to: 'pages#profile'

  resources :medical_records, only: [:show, :new, :create]

  resources :medical_records, only: [:edit, :update, :destroy]
  resources :campaigns
  resources :institutions

end
