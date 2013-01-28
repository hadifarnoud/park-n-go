class RemoveColumnFromService < ActiveRecord::Migration
  def up
  	remove_column :services, :price_id
  	remove_column :services, :service_id
  end

  def down
  	add_column :services, :price_id, :integer
  	add_column :services, :service_id, :integer
  end
end
