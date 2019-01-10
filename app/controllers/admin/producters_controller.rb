class Admin::ProductersController < AdminController
  load_and_authorize_resource

  before_action :load_producters, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @producter.update_attributes producter_params
      flash[:success] = t ".success"
      redirect_to admin_producters_path
    else
      flash[:failed] = t ".failed"
      render :edit
    end
  end

  private
  def producter_params
    params.require(:producter).permit Producter::UPDATE_PRODUCTER_ATTRIBUTES
  end

  def load_producters
    @producter = Producter.first
    @producter_en = @producter.producter_languages.find_by(language: "en")
    @producter_fr = @producter.producter_languages.find_by(language: "fr")
  end
end
