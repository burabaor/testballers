class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|

      t.integer :user_id, null: false
      t.integer :video_id, null: false
      t.timestamps null: false
    end
  end
end
