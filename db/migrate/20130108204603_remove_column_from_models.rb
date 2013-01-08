class RemoveColumnFromModels < ActiveRecord::Migration
  def up
  	remove_column :bookings, :booking_id
  	remove_column :cars, :car_id
  	remove_column :feedbacks, :feedback_id
  	remove_column :parkings, :parking_id
  	remove_column :parking_types, :parking_type_id
  	remove_column :pictures, :picture_id
  end

  def down
  	add_column :bookings, :booking_id, :integer
  	add_column :cars, :car_id, :integer
  	add_column :feedbacks, :feedback_id, :integer
  	add_column :parking_types, :parking_type_id, :integer
  	add_column :pictures, :picture_id, :integer
  end
end
