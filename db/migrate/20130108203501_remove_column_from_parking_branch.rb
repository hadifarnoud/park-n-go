class RemoveColumnFromParkingBranch < ActiveRecord::Migration
  def up
  	remove_column :parking_branches, :branch_id
  	remove_column :parking_branches, :address_id
    add_column :parking_branches, :address1, :string
    add_column :parking_branches, :address2, :string
    add_column :parking_branches, :address3, :string
    add_column :parking_branches, :city, :string
    add_column :parking_branches, :county, :string
    add_column :parking_branches, :postcode, :string
    add_column :parking_branches, :country, :string
  end

  def down
  	add_column :parking_branches, :company_id, :integer
  	add_column :parking_branches, :address_id, :integer
  	remove_column :parking_branches, :address1
    remove_column :parking_branches, :address2
    remove_column :parking_branches, :address3
    remove_column :parking_branches, :city
    remove_column :parking_branches, :county
    remove_column :parking_branches, :postcode
    remove_column :parking_branches, :country
  end
end
