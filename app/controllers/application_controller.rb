class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :firstname, :lastname,  :username, :gender, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :firstname, :lastname,  :username, :gender, :password, :password_confirmation])
  end
end