class CreateVideoCategories < ActiveRecord::Migration
  def change
    create_table :video_categories do |t|
      t.references :video, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps null: false
    end
  end
end
