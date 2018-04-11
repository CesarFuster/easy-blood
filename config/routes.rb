Rails.application.routes.draw do

  devise_for :users, :controllers => {:registrations => "users/registrations"}
  root to: 'pages#home'
  get "/profile", to: 'pages#profile'

  resources :contributors, only: [:new, :create]
  get 'thanks', to: 'contributors#thanks', as: 'thanks'
  resources :medical_records, only: [:show, :new, :create]

  resources :medical_records, only: [:edit, :update, :destroy]
  resources :campaigns
  resources :institutions

end
