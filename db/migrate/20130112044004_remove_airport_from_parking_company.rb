class RemoveAirportFromParkingCompany < ActiveRecord::Migration
  def up
  	remove_column :parking_companies, :airport
  end

  def down
  	add_column :parking_companies, :airport, :string
  end
end
