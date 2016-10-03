class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|

      t.integer :user_id, null: false
      t.integer :video_id, null: false
      t.integer :evaluation, limit: 5, null: false
      t.text :comment
      t.timestamps null: false
    end
  end
end
