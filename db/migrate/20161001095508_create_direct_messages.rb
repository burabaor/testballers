class CreateDirectMessages < ActiveRecord::Migration
  def change
    create_table :direct_messages do |t|

      t.integer :user_id, null: false
      t.integer :received_user_id, null: false
      t.text :message
      t.timestamps null: false
    end
  end
end
