Rails.application.routes.draw do

  devise_for :users, :controllers => {:registrations => "users/registrations"}
  root to: 'pages#home'
  # default_url_options :host => "https://easy-blood.herokuapp.com"

  resources :contributors, only: [:new, :create]

  get 'thanks', to: 'contributors#thanks', as: 'thanks'

  resources :medical_records
  resources :campaigns
  resources :institutions
  get '/profile', to: 'pages#profile'
  get '/404', to: 'errors#error_404'
  get '/422', to: 'errors#error_422'
  get '/500', to: 'errors#error_500'
  get '/about_us', to: 'pages#about_us'
  get '/terms', to: 'pages#terms'
  get '/privacy', to: 'pages#privacy'


end
