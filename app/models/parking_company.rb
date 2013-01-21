class ParkingCompany < ActiveRecord::Base
  attr_accessible :description, :email, :telephone, :website, :company_name, :address1, :address2, :address3, :city, :county, :postcode, :country, :parking_branches_attributes
  has_many :parking_branches
  accepts_nested_attributes_for :parking_branches

  validates :company_name, :presence => true, :uniqueness => true
  validates :email, :presence => true
  validates :telephone, :presence => true
  validates :address1, :presence => true
  validates :city, :presence => true
  validates :postcode, :presence => true
  validates :country, :presence => true

  def full_address
    "#{address1}, #{address2}, #{address3}, #{city}, #{county}, #{postcode}, #{country}"
  end
end
