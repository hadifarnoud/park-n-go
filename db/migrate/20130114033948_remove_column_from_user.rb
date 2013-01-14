class RemoveColumnFromUser < ActiveRecord::Migration
  def up
  	remove_column :users, :address_id
  end

  def down
  	
  	add_column :users, :address_id, :integer
  end
end
