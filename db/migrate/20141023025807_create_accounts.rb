class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :expense_id

      t.timestamps
    end
  end
end
