class ChangeSliderShow < ActiveRecord::Migration[5.1]
  def change
    rename_column :slider_shows, :title_image, :title_image_1
    add_column :slider_shows, :title_image_2, :string
  end
end
