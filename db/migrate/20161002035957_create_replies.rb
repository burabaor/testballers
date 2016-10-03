class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|

      t.integer :user_id, null: false
      t.integer :question_id, null: false
      t.text :content
      t.integer :reply_count, default: 0, null: false
      t.timestamps null: false
    end
  end
end
