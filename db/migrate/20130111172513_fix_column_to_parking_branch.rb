class FixColumnToParkingBranch < ActiveRecord::Migration
  def up
  	rename_column :parking_branches, :company_id, :parking_company_id
  end

  def down
  	rename_column :parking_branches, :parking_company_id, :company_id
  end
end
