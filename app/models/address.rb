class Address < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :city, :country, :county, :postcode
  has_many :users
  validates_presence_of :user

end
