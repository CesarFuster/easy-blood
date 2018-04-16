Rails.application.routes.draw do

  devise_for :users, :controllers => {:registrations => "users/registrations"}
  root to: 'pages#home'
  default_url_options :host => "https://easy-blood.herokuapp.com"
  get "/profile", to: 'pages#profile'

  resources :contributors, only: [:new, :create]
  get 'thanks', to: 'contributors#thanks', as: 'thanks'
  resources :medical_records, only: [:show, :new, :create]

  resources :medical_records, only: [:edit, :update, :destroy]
  resources :campaigns
  resources :institutions

end
