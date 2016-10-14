class CreatePaymentAccounts < ActiveRecord::Migration
  def change
    create_table :payment_accounts do |t|

      t.integer :user_id, null: false
      t.string :bank_name
      t.integer :branch_num
      t.integer :account_num
      t.string :account_type
      t.string :account_holder
      t.string :customer_id
      t.timestamps null: false
    end

    add_index :payment_accounts, :user_id
  end
end
