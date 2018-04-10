Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "users/registrations"}
  root to: 'pages#home'

  scope '/users/:user_id' do
    resources :medical_records, only: [:show, :new, :create]
  end

  resources :medical_records, only: [:edit, :update, :destroy]
  resources :campaigns
  resources :institutions
end
