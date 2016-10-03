class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|

      t.integer :user_id, null: false
      t.integer :in_or_out, limit: 1, default: 0, null: false
      t.integer :sum, null: false
      t.boolean :finished_or_not, default: false, null: false
      t.timestamps null: false
    end
  end
end
