class AddColumnsToUser < ActiveRecord::Migration
  def up
    add_column :users, :picture_id, :integer
    add_column :users, :vat_number, :string
    add_column :users, :telephone, :string
    add_column :users, :mobile, :string
    add_column :users, :booking_id, :integer
    add_column :users, :address_id, :integer
  end
  
  def down
    remove_column :users, :picture_id
    remove_column :users, :vat_number
    remove_column :users, :telephone
    remove_column :users, :mobile
    remove_column :users, :booking_id
    remove_column :users, :address_id
  end
end
