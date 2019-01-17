class Admin::ModuleThemesController < AdminController
  load_and_authorize_resource

  before_action :load_module_theme_languages, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @module_theme.update_attributes module_theme_params
      flash[:success] = t ".success"
      redirect_to admin_module_themes_path
    else
      flash[:failed] = t ".failed"
      render :edit
    end
  end

  private
  def module_theme_params
    params.require(:module_theme).permit ModuleTheme::UPDATE_MODULE_THEME_ATTRIBUTES
  end

  def load_module_theme_languages
    @module_theme = ModuleTheme.first
    @module_theme_en = @module_theme.module_theme_languages.find_by(language: "en")
    @module_theme_fr = @module_theme.module_theme_languages.find_by(language: "fr")
  end
end
