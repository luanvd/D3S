class CreateProducer < ActiveRecord::Migration[5.1]
  def change
    create_table :producers do |t|
      t.string :image
      
      t.timestamps
    end
  end
end
