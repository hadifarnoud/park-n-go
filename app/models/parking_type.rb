class ParkingType < ActiveRecord::Base
  attr_accessible :parking_type_description, :parking_type_name, :parking_id
  has_many :parkings
  has_and_belongs_to_many :parkings
end
