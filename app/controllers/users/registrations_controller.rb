class Users::RegistrationsController < Devise::RegistrationsController
  def after_sign_up_path_for(resource)
    super(resource)
    root_path(new_user: true)
  end

end
