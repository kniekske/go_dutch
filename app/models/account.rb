class Account < ActiveRecord::Base
	belongs_to_many :users
	has_many :expenses
end
