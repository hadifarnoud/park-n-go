class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :address_id
      t.string :house_name
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :county
      t.string :city
      t.string :postcode
      t.string :country

      t.timestamps
    end
  end
end
