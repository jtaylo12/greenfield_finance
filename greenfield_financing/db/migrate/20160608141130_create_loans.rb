class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.integer :user_id
      t.integer :duration
      t.float :interest_rate
      t.float :loan_balance
      t.string :loan_type

      t.timestamps

    end
  end
end
