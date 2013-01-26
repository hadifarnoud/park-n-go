object @booking
attributes :transaction_id, :user_id, :drop_off, :pick_up, :flight_inbound, :flight_outbound, :transaction_id, :where_i_parked

# if current_user.

child :car do
  attributes :car_make, :car_model, :car_colour, :car_last_state_report, :car_milage, :car_picture, :car_year
end

child :user do
  attributes :name, :email, :picture_id, :vat_number, :telephone, :mobile, :booking_id, :address_id ,:role_ids => :user_role
end
