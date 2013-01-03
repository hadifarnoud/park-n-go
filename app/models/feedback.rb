class Feedback < ActiveRecord::Base
  attr_accessible :comment, :feedback_id, :raiting
  has_many bookings
end
