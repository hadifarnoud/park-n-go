class RemoveColumnFromParking < ActiveRecord::Migration
  def up
  	add_column :parkings, :name, :string
  	remove_column :parkings, :price_id
  	add_column :parkings, :parking_branch_id, :integer
  end

  def down
  	remove_column :parkings, :name
  	remove_column :parkings, :parking_branch_id
  	add_column :parkings, :price_id, :integer
  end
end
