collection @booking
extends "bookings/new"

node(:user_name) {@booking.user.name}
node(:car_make_model) {@booking.car.car_make + " " + @booking.car.car_model}