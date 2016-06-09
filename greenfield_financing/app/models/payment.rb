class Payment < ActiveRecord::Base
  belongs_to :loan, :class_name => "Loan", :foreign_key=>"loan_id"
  belongs_to :user
end
