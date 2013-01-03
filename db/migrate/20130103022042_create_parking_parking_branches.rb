class CreateParkingParkingBranches < ActiveRecord::Migration
  def up
    create_table :parking_parking_branches, :id => false do |t|
      t.integer :branch_id
      t.integer :parking_id
    end
    
    add_index :parking_parking_branches, :branch_id
    add_index :parking_parking_branches, :parking_id
  end
  
  def down
    drop_table :parking_parking_branches
  end
end
