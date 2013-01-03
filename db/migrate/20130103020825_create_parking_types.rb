class CreateParkingTypes < ActiveRecord::Migration
  def change
    create_table :parking_types do |t|
      t.integer :parking_type_id
      t.string :parking_type_name
      t.string :parking_type_description

      t.timestamps
    end
  end
end
