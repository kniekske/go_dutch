class Expense < ActiveRecord::Base
belongs_to :user
belongs_to :account
end

class Money
Money::Currency

def major_currencies(hash)
  hash.inject([]) do |array, (id, attributes)|
    priority = attributes[:priority]
    if priority && priority < 10
      array[priority] ||= []
      array[priority] << id
    end
    array
  end.compact.flatten
end


end