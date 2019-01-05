class Admin::SliderImagesController < AdminController
  def update
    @slider_show = SliderShow.first
    @slider_image = SliderImage.find params[:id]
    sort_index = params[:slider_image][:sort_index]

    update_existed_sort_index(sort_index) if sort_index
    if @slider_image.update_attributes sort_index: sort_index
      flash[:success] = t ".success"
    else
      flash[:failed] = t ".failed"
    end
    redirect_to admin_slider_shows_path
  end

  private
  def update_existed_sort_index sort_index
    slider_images = @slider_show.slider_images.where(sort_index: sort_index)
    slider_images.update_all(sort_index: nil)
  end
end