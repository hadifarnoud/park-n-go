class ParkingBranch < ActiveRecord::Base
  attr_accessible :parking_company_id, :airport, :email, :branch_name, :latitude, :longitude, :parking_id, :service_id, :telephone, :address1, :address2, :address3, :city, :county, :postcode, :country
  geocoded_by :full_address
  belongs_to :parking_company
  has_many :services
  has_and_belongs_to_many :parkings
  validates :parking_company_id, :presence => true
  validates :branch_name, :presence => true, :uniqueness => true
  validates :telephone, :presence => true
  validates :address1, :presence => true
  validates :city, :presence => true
  validates :postcode, :presence => true
  validates :country, :presence => true
  validates :airport, :presence => true

  after_validation :geocode #, if => :full_address_changed?

  def full_address
    "#{address1}, #{address2}, #{address3}, #{city}, #{county}, #{postcode}, #{country}"
  end

  def postcode=(postcode)
    super(GoingPostal.postcode?(postcode, 'GB')) if postcode
  end
end
