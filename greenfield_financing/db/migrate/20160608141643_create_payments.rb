class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :loan_id
      t.integer :user_id
      t.float :previous_payment
      t.float :payment_due
      t.float :monthly_payment
      t.float :total_payments
      t.string :payment_history

      t.timestamps

    end
  end
end
