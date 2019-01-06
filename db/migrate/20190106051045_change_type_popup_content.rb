class ChangeTypePopupContent < ActiveRecord::Migration[5.1]
  def change
    change_column :popup_translations, :content, :text
  end
end
