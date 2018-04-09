Rails.application.routes.draw do
  get 'medicalrecords/show'

  get 'medicalrecords/new'

  get 'medicalrecords/create'

  get 'medicalrecords/edit'

  get 'medicalrecords/update'

  get 'medicalrecords/destroy'

  get 'campaigns/index'

  get 'campaigns/show'

  get 'campaigns/new'

  get 'campaigns/create'

  get 'campaigns/edit'

  get 'campaigns/update'

  get 'campaigns/destroy'

  devise_for :users
  root to: 'pages#home'

  scope '/users/:user_id' do
    resources :medicalrecords, only: [:show, :new, :create]
  end

  resources :medicalrecords, only: [:edit, :update, :destroy]
  resources :campaigns
  resources :institutions
end
