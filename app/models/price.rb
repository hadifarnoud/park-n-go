class Price < ActiveRecord::Base
  attr_accessible :price_amount, :price_currency, :base_price, :duration, :price_rule, :parking_id
  belongs_to :parking
  belongs_to :service
end
