object @car
attributes :car_colour, :car_last_state_report, :car_make, :car_milage, :car_model, :car_picture, :car_year

child :user do
  attributes :id, :name
end