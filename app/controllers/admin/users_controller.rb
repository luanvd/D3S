class Admin::UsersController < AdminController
  load_and_authorize_resource

  before_action :load_user_data, only: [:edit, :update, :show, :destroy]

  def index
    if current_user.admin?
      return @users = User.all
    else
      return @users = User.mod
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    @user.admin_create_user = true
    if @user.save
      UserMailer.send_password_to_user(@user.email, @user.password).deliver_now
      flash[:success] = t('.success')
      redirect_to edit_admin_user_path @user
    else
      flash[:failed] = t('.failed')
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update_attributes admin_update_user_params
      flash[:success] = t('.success')
      redirect_to admin_users_path
    else
      flash[:failed] = t('.failed')
      render :edit
    end
  end

  def destroy
    if @user.destroy
      flash[:success] = t('.success')
    else
      flash[:danger] = t('.failed')
    end
    redirect_to admin_users_path
  end

  private
  def load_user_data
    @user = User.find params[:id]
  end

  def user_params
    password = password_confirmation = Devise.friendly_token.first(8)
    params[:user].merge!({
      password: password,
      password_confirmation: password_confirmation,
      role: User.roles[:mod]
    })
    params.require(:user).permit User::ADMIN_CREATE_ATTRIBUTE
  end

  def admin_update_user_params
    params.require(:user).permit User::UPDATE_ATTRIBUTE
  end
end
