class CreateProducerTranslation < ActiveRecord::Migration[5.1]
  def change
    create_table :producer_translations do |t|
      t.references :producer
      t.integer :language, default: 0
      t.string :title
      
      t.timestamps
    end
  end
end
