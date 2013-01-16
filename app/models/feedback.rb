class Feedback < ActiveRecord::Base
  attr_accessible :comment, :feedback_id, :raiting, :booking_id
  belongs_to :booking
end
