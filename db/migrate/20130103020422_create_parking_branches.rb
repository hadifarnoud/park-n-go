class CreateParkingBranches < ActiveRecord::Migration
  def change
    create_table :parking_branches do |t|
      t.integer :branch_id
      t.integer :company_id
      t.integer :address_id
      t.string :telephone
      t.string :email
      t.float :longitude
      t.float :latitude
      t.integer :parking_id
      t.integer :service_id

      t.timestamps
    end
  end
end
