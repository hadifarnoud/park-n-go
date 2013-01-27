class Parking < ActiveRecord::Base
  attr_accessible :parking_branch_id, :name, :parking_type_id
  belongs_to :parking_branch
  has_and_belongs_to_many :parking_types
end


