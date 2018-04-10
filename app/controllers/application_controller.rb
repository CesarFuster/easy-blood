class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


   def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :address, :phone_number, :blood_type, :available_monday, :available_tuesday, :available_wednesday, :available_thursday, :available_friday, :available_saturday, :available_sunday  ])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys:[:first_name, :last_name, :address, :phone_number, :blood_type, :available_monday, :available_tuesday, :available_wednesday, :available_thursday, :available_friday, :available_saturday, :available_sunday  ])
  end
end
