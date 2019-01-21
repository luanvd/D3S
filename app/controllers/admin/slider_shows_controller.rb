class Admin::SliderShowsController < AdminController
  load_and_authorize_resource

  before_action :load_slider_show, only: [:update_sort_index, :show, :edit, :update]

  def show
    @slider_images = @slider_show.slider_images.order(sort_index: :asc)
  end

  def edit
    @slider_images = @slider_show.slider_images.order(sort_index: :asc).presence || [@slider_show.slider_images.new]
    build_slider_show_translations @slider_show
  end

  def update
    if @slider_show.update_attributes slider_show_params
      flash[:success] = t ".success"
      redirect_to admin_slider_shows_path
    else
      flash[:failed] = t ".failed"
      render :edit
    end
  end

  def update_sort_index
  end

  private
  def slider_show_params
    params.require(:slider_show).permit(
      slider_show_translations_attributes: [:id, :slider_show_id, :title_1, :title_2, :language],
      slider_images_attributes: [:id, :slider_show_id, :image, :_destroy])
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

  def build_slider_show_translations slider_show
    @slider_show_translations = []
    Settings.translation_languages.each do |lang|
      @slider_show_translations << slider_show.slider_show_translations.new(language: lang)
    end
    @slider_show_translations
  end
end
