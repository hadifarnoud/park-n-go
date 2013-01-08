class RemoveCompanyIdFromParkingCompany < ActiveRecord::Migration
  def up
  	remove_column :parking_companies, :company_id
  end

  def down
  	add_column :parking_companies, :company_id, :integer
  end
end
