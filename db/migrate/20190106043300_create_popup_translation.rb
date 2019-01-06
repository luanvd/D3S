class CreatePopupTranslation < ActiveRecord::Migration[5.1]
  def change
    create_table :popup_translations do |t|
      t.references :popup
      t.integer :language, default: 0
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
