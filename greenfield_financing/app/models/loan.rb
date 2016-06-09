class Loan < ActiveRecord::Base

  has_many :payments, :class_name=>"Payment", :foreign_key=>"loan_id"
  belongs_to :user, :class_name=>"User", :foreign_key=>"user_id"
end
