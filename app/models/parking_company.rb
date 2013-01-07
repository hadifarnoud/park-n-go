class ParkingCompany < ActiveRecord::Base
  attr_accessible :address_id, :company_id, :description, :email, :telephone, :website, :company_name, :addresses_attributes
  has_many :parking_branch
  has_one :address
  #validates :email, :format => { :email}
  #validates :
  accepts_nested_attributes_for :address
end
