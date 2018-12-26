class AdminController < ApplicationController   
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.for :account_update do |u|
      u.permit :name, :email, :user_avatar, :password, :password_confirmation, :current_password
    end

    devise_parameter_sanitizer.for :sign_up do |u|
      u.permit :name, :email, :user_avatar, :password, :password_confirmation
    end
  end
end
