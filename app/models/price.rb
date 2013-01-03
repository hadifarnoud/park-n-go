class Price < ActiveRecord::Base
  attr_accessible :price_amount, :price_currency, :price_id
  has_many :parkings
  has_many :services
end
