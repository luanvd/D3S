class Admin::OriginesController < AdminController
  load_and_authorize_resource

  before_action :load_origines, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @origine.update_attributes origine_params
      flash[:success] = t ".success"
      redirect_to admin_origines_path
    else
      flash[:failed] = t ".failed"
      render :edit
    end
  end

  private
  def origine_params
    params.require(:origine).permit Origine::UPDATE_ORIGINE_ATTRIBUTES
  end

  def load_origines
    @origine = Origine.first
    @origine_en = @origine.origine_languages.find_by(language: "en")
    @origine_fr = @origine.origine_languages.find_by(language: "fr")
  end
end
