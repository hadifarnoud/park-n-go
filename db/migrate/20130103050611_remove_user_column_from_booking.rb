class RemoveUserColumnFromBooking < ActiveRecord::Migration
  def up
    remove_column :bookings, :user_id
  end

  def down
    add_column :bookings, :user_id, :integer
  end
end
