class AddTitleImageToSliderShow < ActiveRecord::Migration[5.1]
  def change
    add_column :slider_shows, :title_image, :string
  end
end
