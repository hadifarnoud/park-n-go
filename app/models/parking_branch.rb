class ParkingBranch < ActiveRecord::Base
  attr_accessible :company_id, :email, :latitude, :longitude, :parking_id, :service_id, :telephone, :address1, :address2, :address3, :city, :county, :postcode, :country
  belongs_to :parking_company
  has_many :services
  has_and_belongs_to_many :parking
end
