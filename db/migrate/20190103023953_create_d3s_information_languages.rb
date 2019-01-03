class CreateD3sInformationLanguages < ActiveRecord::Migration[5.1]
  def change
    create_table :d3s_information_languages do |t|
      t.references :d3s_information, foreign_key: true
      t.string :language
      t.string :title_1
      t.text :des_1
      t.string :title_2
      t.text :des_2
      t.text :des_middle

      t.timestamps
    end
  end
end
