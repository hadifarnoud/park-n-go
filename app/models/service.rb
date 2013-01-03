class Service < ActiveRecord::Base
  attr_accessible :price_id, :service_id, :service_name
  belongs_to :price
  has_many :parking_branches
  has_many :transactions
end
