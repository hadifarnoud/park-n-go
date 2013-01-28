class RemoveColumnToTransaction < ActiveRecord::Migration
  def up
  	add_column :transactions, :parking_branch_id, :integer
  end

  def down
  	remove_column :transactions, :parking_branch_id
  end
end
