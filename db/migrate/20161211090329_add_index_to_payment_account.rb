class AddIndexToPaymentAccount < ActiveRecord::Migration
  def change
    remove_foreign_key :payment_accounts, :user
  end
end
