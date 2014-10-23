class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.integer :account_id
      t.float :amount
      t.string :item
      t.string :category

      t.timestamps
    end
  end
end
