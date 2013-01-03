class ParkingCompany < ActiveRecord::Base
  attr_accessible :address_id, :company_id, :description, :email, :telephone, :website
  has_many :parking_branch
  belongs_to :addresses
end
