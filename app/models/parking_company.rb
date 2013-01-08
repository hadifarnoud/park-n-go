class ParkingCompany < ActiveRecord::Base
  attr_accessible :description, :email, :telephone, :website, :company_name, :branch_id, :address1, :address2, :address3, :city, :county, :postcode, :country, :parking_branches_attributes
  has_many :parking_branch 

  accepts_nested_attributes_for :parking_branch

end
