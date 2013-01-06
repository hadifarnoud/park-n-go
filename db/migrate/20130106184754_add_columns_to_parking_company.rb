class AddColumnsToParkingCompany < ActiveRecord::Migration
  def up
    add_column :parking_companies, :company_name, :string
  end
  
  def down
    remove_column :parking_companies, :company_name
  end
end
