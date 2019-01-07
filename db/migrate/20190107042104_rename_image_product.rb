class RenameImageProduct < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :name, :image
  end
end
