class Transaction < ActiveRecord::Base
  attr_accessible :branch_id, :currency, :device, :parking_id, :point, :service_id, :transaction_id, :user_id
  belongs_to :service
  belongs_to :parking
  belongs_to :user
  belongs_to :parking_branch
  has_many :bookings
end
