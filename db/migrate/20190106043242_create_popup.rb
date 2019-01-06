class CreatePopup < ActiveRecord::Migration[5.1]
  def change
    create_table :popups do |t|
      t.string :name

      t.timestamps
    end
  end
end
