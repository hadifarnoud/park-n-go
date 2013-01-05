class Address < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :address_id, :city, :country, :county, :house_name, :postcode
  has_many :parking_companies
  has_many :users
  validates_presence_of :user
end
