
class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_account_update_params, only: [:update]

  def new
    def new
      @user = user.where('age_id IN(?)', params[:age_id])
    super
  end

  def create
    super
  end
  
  protected
  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :age_id, :skin_type_id, :personal_color_id, :face_type_id])
  end
end

