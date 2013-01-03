class ParkingBranch < ActiveRecord::Base
  attr_accessible :address_id, :branch_id, :company_id, :email, :latitude, :longitude, :parking_id, :service_id, :telephone
  belongs_to :parking_company
  has_and_belongs_to_many :parking
end
