class AdminController < ApplicationController   
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to admin_root_path
  end

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for :account_update do |u|
      u.permit :name, :email, :user_avatar, :password, :password_confirmation, :current_password
    end

    devise_parameter_sanitizer.for :sign_up do |u|
      u.permit :name, :email, :user_avatar, :password, :password_confirmation
    end
  end

  def current_ability
    controller_namespace = params[:controller].split("/").first
    Ability.new current_user, controller_namespace
  end  
end
