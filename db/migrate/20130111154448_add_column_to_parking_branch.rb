class AddColumnToParkingBranch < ActiveRecord::Migration
  def up
  	add_column :parking_branches, :airport, :string
  	add_column :parking_branches, :branch_name, :string
  end
  def down
  	remove_column :parking_branches, :airport
  	remove_column :parking_branches, :branch_name
  end

end
