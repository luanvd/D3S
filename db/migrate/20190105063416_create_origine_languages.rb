class CreateOrigineLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :origine_languages do |t|
      t.string :language
      t.string :left_text_1
      t.string :left_text_2
      t.string :left_text_3
      t.string :right_title_1
      t.string :right_title_2
      t.string :right_title_3
      t.string :right_des_1
      t.string :right_des_2
      t.string :right_des_3
      t.references :origine, foreign_key: true

      t.timestamps
    end
  end
end
