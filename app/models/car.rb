class Car < ActiveRecord::Base
  attr_accessible :car_colour, :car_id, :car_last_state_report, :car_make, :car_milage, :car_model, :car_picture, :car_year, :user_id
  belongs_to :user
  has_many :bookings
end
