class Price < ActiveRecord::Base
  attr_accessible :price_amount, :price_currency
  belongs_to :parkings
  has_many :services
end
