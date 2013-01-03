class Booking < ActiveRecord::Base
  attr_accessible :booking_id, :car_id, :drop_off, :feedback_id, :flight_inbound, :flight_outbound, :pick_up, :transaction_id, :user_id, :where_i_parked
  belongs_to :transaction
  belongs_to :feedback
  belongs_to :car
end
