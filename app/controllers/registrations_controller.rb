class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    redirect_to create_accman_path 
  end
end