class Parking < ActiveRecord::Base
  attr_accessible :parking_id, :price_id, :parking_type_id
  has_and_belongs_to_many :parking_branch
  belongs_to :parking_type
  belongs_to :price
end
