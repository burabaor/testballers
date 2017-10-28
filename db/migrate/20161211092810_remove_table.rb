class RemoveTable < ActiveRecord::Migration
  def change
    drop_table :payment_accounts
  end
end
