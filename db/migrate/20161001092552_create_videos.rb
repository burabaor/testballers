class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|

      t.integer :user_id, null: false
      t.string :file, null: false
      t.string :title, unique: true, null: false
      t.text :description
      t.integer :purchase_count, null: false, default: 0
      t.string :passcoad
      t.timestamps null: false
    end
  end
end
