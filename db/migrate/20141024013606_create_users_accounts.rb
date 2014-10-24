class CreateUsersAccounts < ActiveRecord::Migration
  def change
    create_table :users_accounts do |t|
      t.integer :user_id
      t.integer :account_id

      t.timestamps
    end
  end
end
