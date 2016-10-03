class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :point, :integer, default: 0, null: false
  end
end
