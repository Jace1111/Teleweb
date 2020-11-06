class ApplicationController < ActionController::Base

	protect_from_forgery with: :exception
	protect_from_forgery unless:->{request.format.json?}

	before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:update, keys: [:first_name, :last_name, :url])
		devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
	end
end