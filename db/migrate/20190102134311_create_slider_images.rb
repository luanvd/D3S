class CreateSliderImages < ActiveRecord::Migration[5.1]
  def change
    create_table :slider_images do |t|
      t.references :slider_show
      t.integer :sort_index
      t.string :caption
      t.string :image

      t.timestamps null: false
    end
  end
end
