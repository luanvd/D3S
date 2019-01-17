class CreateModuleThemeLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :module_theme_languages do |t|
      t.string :language
      t.string :img_about
      t.string :img_enga
      t.string :img_enga_producter
      t.string :img_enga_quality
      t.string :img_origine
      t.string :img_product
      t.string :img_producter
      t.string :img_facility
      t.string :img_contact
      t.references :module_theme, foreign_key: true

      t.timestamps
    end
  end
end
