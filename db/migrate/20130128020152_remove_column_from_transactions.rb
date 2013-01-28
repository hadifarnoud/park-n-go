class RemoveColumnFromTransactions < ActiveRecord::Migration
  def up
  	remove_column :transactions, :transaction_id
  	remove_column :transactions, :branch_id
  	add_column :transactions, :reference, :string
  end

  def down
  	add_column :transactions, :transaction_id, :integer
  	add_column :transactions, :branch_id, :integer
  	remove_column :transactions, :reference
  end
end
