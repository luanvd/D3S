class CreateSliderShow < ActiveRecord::Migration[5.1]
  def change
    create_table :slider_shows do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
