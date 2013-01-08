class ParkingType < ActiveRecord::Base
  attr_accessible :parking_type_description, :parking_type_name
  has_many :parkings
end
