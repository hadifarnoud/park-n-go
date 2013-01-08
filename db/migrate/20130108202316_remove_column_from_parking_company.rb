class RemoveColumnFromParkingCompany < ActiveRecord::Migration
  def up
  	remove_column :parking_companies, :address_id
  end

  def down
  	add_column :parking_companies, :address_id, :integer
  end
end