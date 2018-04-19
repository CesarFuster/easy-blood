Rails.application.routes.draw do

  devise_for :users, :controllers => {:registrations => "users/registrations"}
  root to: 'pages#home'
  default_url_options :host => "http://www.easyblood.com.br"

  resources :contributors, only: [:new, :create]

  get 'thanks', to: 'contributors#thanks', as: 'thanks'

  resources :medical_records
  resources :campaigns
  resources :institutions
  get '/profile', to: 'pages#profile'
  get '/about_us', to: 'pages#about_us'
  get '/terms', to: 'pages#terms'
  get '/privacy', to: 'pages#privacy'
  get 'errors/error_404'
  get 'errors/error_422'
  get 'errors/error_500'


end
