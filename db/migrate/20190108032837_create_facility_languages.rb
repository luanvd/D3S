class CreateFacilityLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :facility_languages do |t|
      t.string :language
      t.string :left_text_1
      t.string :left_text_2
      t.text :right_text_1
      t.text :right_text_2
      t.text :right_text_3
      t.references :facility, foreign_key: true

      t.timestamps
    end
  end
end
