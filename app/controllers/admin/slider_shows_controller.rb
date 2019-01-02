class Admin::SliderShowsController < Admin::BaseController
  before_action :load_slider_show, only: [:show, :edit, :update]

  def edit
  end

  def update
  end

  private
  def slider_show_params
    params.require(:slider_show).permit(:name, slider_images_attributes: [:id, :slider_show_id, :sort_index, :caption, :image, :_destroy])
  end

  def load_slider_show
    @slider_show = SliderShow.first
  end

  def check_slider_show
    if SliderShow.first.nil?
      flash[:failed] = t ".no_slider_show"
      redirect_to admin_root_path
    end
  end
end