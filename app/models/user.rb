class User < ActiveRecord::Base
	has_many :expenses
	has_and_belongs_to_many :accounts, :join_table => 'users_accounts'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
