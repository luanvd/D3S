class CreateD3sInformations < ActiveRecord::Migration[5.1]
  def change
    create_table :d3s_informations do |t|
      t.string :name
      t.string :image_1
      t.string :image_2

      t.timestamps
    end
  end
end
