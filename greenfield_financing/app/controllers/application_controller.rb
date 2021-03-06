class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
protected
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :username
      devise_parameter_sanitizer.for(:sign_up) << :first_name
      devise_parameter_sanitizer.for(:sign_up) << :middle_init
      devise_parameter_sanitizer.for(:sign_up) << :last_name
      devise_parameter_sanitizer.for(:sign_up) << :street_address
      devise_parameter_sanitizer.for(:sign_up) << :city
      devise_parameter_sanitizer.for(:sign_up) << :state



      devise_parameter_sanitizer.for(:account_update) << :street_address
      devise_parameter_sanitizer.for(:account_update) << :city
      devise_parameter_sanitizer.for(:account_update) << :state
    end

end
