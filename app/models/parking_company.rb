class ParkingCompany < ActiveRecord::Base
  attr_accessible :address_id, :company_id, :description, :email, :telephone, :website, :company_name, :branch_id, :address, :parking_branches_attributes
  has_many :parking_branch 
  belongs_to :address
  accepts_nested_attributes_for :address, :parking_branch

end
