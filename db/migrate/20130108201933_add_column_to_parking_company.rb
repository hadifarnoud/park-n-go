class AddColumnToParkingCompany < ActiveRecord::Migration
  def change
    add_column :parking_companies, :address1, :string
    add_column :parking_companies, :address2, :string
    add_column :parking_companies, :address3, :string
    add_column :parking_companies, :city, :string
    add_column :parking_companies, :county, :string
    add_column :parking_companies, :postcode, :string
    add_column :parking_companies, :country, :string
  end
end
