class CreateProductTranslation < ActiveRecord::Migration[5.1]
  def change
    create_table :product_translations do |t|
      t.references :product
      t.integer :language
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
