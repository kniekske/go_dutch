class Account < ActiveRecord::Base
	has_and_belongs_to_many :users, :join_table => 'users_accounts'
	has_many :expenses

	def total_expenses
		total = 0
		self.expenses.each do |e|
			total += e.amount
		end
		return total 
	end
end

# Account.first.total_expenses
