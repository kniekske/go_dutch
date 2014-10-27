class UsersAccount < ActiveRecord::Base
	belongs_to :user

	validates_uniqueness_of :user_id, :scope => :account_id
end
