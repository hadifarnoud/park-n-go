class CreateParkingCompanies < ActiveRecord::Migration
  def change
    create_table :parking_companies do |t|
      t.integer :company_id
      t.integer :address_id
      t.string :email
      t.string :website
      t.string :telephone
      t.string :description

      t.timestamps
    end
  end
end
