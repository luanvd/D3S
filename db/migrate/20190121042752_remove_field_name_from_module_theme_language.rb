class RemoveFieldNameFromModuleThemeLanguage < ActiveRecord::Migration[5.1]
  def change
    remove_column :module_theme_languages, :img_enga_quality, :string
  end
end
