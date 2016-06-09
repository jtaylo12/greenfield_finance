class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :loans, :class_name=>"Loan", :foreign_key=>"user_id"
         has_many :payments, :class_name=>"Payment", :foreign_key=>"user_id"
end
