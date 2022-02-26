class ApplicationController < ActionController::Base
  before_action :confiqure_permtted_paramenters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    homes_about_path
  end

  def after_sign_out_path_for(resource)
    homes_about_path
  end

  protected

  def configure_permitted_paramenters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
