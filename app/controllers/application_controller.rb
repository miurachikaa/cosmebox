class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_out_path_for(_resource)
    user_session_path
  end

  private

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
     username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:nickname, :age_id, :skin_type_id, :personal_color_id, :face_type_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])
  end

end

