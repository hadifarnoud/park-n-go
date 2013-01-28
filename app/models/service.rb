class Service < ActiveRecord::Base
  attr_accessible :service_name
  has_many :price
  has_many :parking_branches
  has_many :transactions
end
