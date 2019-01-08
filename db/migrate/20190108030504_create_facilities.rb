class CreateFacilities < ActiveRecord::Migration[5.1]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
