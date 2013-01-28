class Service < ActiveRecord::Base
  attr_accessible :service_name
  has_many :prices
  has_many :parking_branches
  has_many :transactions
end
