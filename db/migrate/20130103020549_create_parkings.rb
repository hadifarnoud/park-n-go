class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.integer :parking_id
      t.integer :parking_type_id
      t.integer :parking_price_id

      t.timestamps
    end
  end
end
