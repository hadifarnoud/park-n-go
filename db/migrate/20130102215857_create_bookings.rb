class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :booking_id
      t.integer :user_id
      t.integer :transaction_id
      t.integer :car_id
      t.datetime :drop_off
      t.datetime :pick_up
      t.string :flight_inbound
      t.string :flight_outbound
      t.string :where_i_parked
      t.integer :feedback_id

      t.timestamps
    end
  end
end
