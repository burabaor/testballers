class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.integer :user_id, null: false
      t.integer :video_id, null: false
      t.text :content
      t.boolean :reply_existing, default: false, null: false
      t.timestamps null: false
    end
  end
end
