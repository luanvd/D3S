class CreateOrigines < ActiveRecord::Migration[5.1]
  def change
    create_table :origines do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
