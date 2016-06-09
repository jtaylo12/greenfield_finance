class AddRequestColumnToLoan < ActiveRecord::Migration
  def change
    add_column :loans, :request, :text
  end
end
