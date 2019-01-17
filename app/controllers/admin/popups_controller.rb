class Admin::PopupsController < AdminController
  load_and_authorize_resource

  before_action :load_popup

  def show
    @popup_translations = @popup.popup_translations
  end

  def edit
    @popup_translations = @popup.popup_translations
  end

  def update
    if @popup.update_attributes popup_params
      flash[:success] = t ".success"
      redirect_to admin_popups_path
    else
      flash.now[:failed] = t ".failed"
      render :edit
    end
  end

  private
  def load_popup
    @popup = Popup.includes(:popup_translations).first
  end

  def popup_params
    params.require(:popup).permit :name, popup_translations_attributes: [:id, :title, :content]
  end
end
