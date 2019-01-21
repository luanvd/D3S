class CreateSliderShowTranslation < ActiveRecord::Migration[5.1]
  def change
    create_table :slider_show_translations do |t|
      t.references :slider_show
      t.integer :language, default: 0
      t.string :title_1
      t.string :title_2

      t.timestamps
    end
  end
end
