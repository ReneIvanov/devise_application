class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?  #because we want to add parameters to user = devise

	protected

  def configure_permitted_parameters #descripted on https://github.com/plataformatec/devise
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email]) #allows parameter :email for sign_up action
  	devise_parameter_sanitizer.permit(:sign_in, keys: [:email]) #allows parameter :email for sign_in action
	devise_parameter_sanitizer.permit(:account_update, keys: [:email]) #allows parameter :email for account_update action
  end


end
