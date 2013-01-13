class Booking < ActiveRecord::Base
  attr_accessible :car_id, :feedback_id, :user_id, :drop_off, :flight_inbound, :flight_outbound, :pick_up, :transaction_id, :where_i_parked
  belongs_to :transaction
  belongs_to :feedback
  belongs_to :car

  validates :drop_off, :presence => true
  validates :pick_up, :presence => true

end
