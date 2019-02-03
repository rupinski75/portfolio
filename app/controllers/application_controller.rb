class ApplicationController < ActionController::Base
  before_action :configure_perrmited_parameters, if: :devise_controller?

  def configure_perrmited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end
