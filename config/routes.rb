Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  scope '/users/:user_id' do
    resources :medicalrecords, only: [:show, :new, :create]
  end

  resources :medicalrecords, only: [:edit, :update, :destroy]
  resources :campaigns
  resources :institutions
end
