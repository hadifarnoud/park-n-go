class Address < ActiveRecord::Base
  attr_accessible :address_id,:address1, :address2, :address3, :city, :country, :county, :house_name, :postcode
  has_one :parking_companies
  has_many :users
  # validates_presence_of :user
end
