class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|

      t.references :user,        null: false, foreign_key: true
      t.string :file,            null: false
      t.string :title,           null: false, unique: true
      t.text :description
      t.string :passcoad
      t.integer :purchase_count, null: false, default: 0
      t.timestamps               null: false
    end
  end
end
