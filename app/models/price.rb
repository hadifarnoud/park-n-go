class Price < ActiveRecord::Base
  attr_accessible :service_id, :parking_id, :price_amount, :price_currency, :base_price, :duration, :price_rule
  belongs_to :parking
  belongs_to :service
end
