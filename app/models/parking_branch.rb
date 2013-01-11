class ParkingBranch < ActiveRecord::Base
  attr_accessible :company_id, :airport, :email, :branch_name, :latitude, :longitude, :parking_id, :service_id, :telephone, :address1, :address2, :address3, :city, :county, :postcode, :country
  geocoded_by :full_address
  belongs_to :parking_company
  has_many :services
  has_and_belongs_to_many :parking
  after_validation :geocode #, if => :full_address_changed?

  def full_address
    "#{address1}, #{address2}, #{address3}, #{city}, #{county}, #{postcode}, #{country}"
  end
end
