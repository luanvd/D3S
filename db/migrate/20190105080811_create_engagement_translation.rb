class CreateEngagementTranslation < ActiveRecord::Migration[5.1]
  def change
    create_table :engagement_translations do |t|
      t.references :engagement
      t.integer :language, default: 0
      t.string :title
      t.text :content
      
      t.timestamps
    end
  end
end
