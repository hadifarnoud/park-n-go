class Car < ActiveRecord::Base
  attr_accessible  :user_id, :car_colour, :car_last_state_report, :car_make, :car_milage, :car_model, :car_picture, :car_year
  belongs_to :user
  has_many :bookings
end
