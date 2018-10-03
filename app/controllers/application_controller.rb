class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? #ストロングパラメターとセットで表記する。configure_permitted_parameters
  protect_from_forgery with: :exception
  
  protected
  
  def configure_permitted_parameters #Deviseで許可されてる3つのアクション、:sign_up、:sign_in、:account_update
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :self_introduction, :sex, :img_name]) 
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :self_introduction, :sex, :img_name])
  end
  
   def after_sign_in_path_for(resource)
    users_path
   end
end
