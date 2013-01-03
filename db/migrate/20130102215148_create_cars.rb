class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :car_id
      t.integer :user_id
      t.string :car_make
      t.string :car_model
      t.string :car_colour
      t.integer :car_year
      t.integer :car_milage
      t.string :car_picture
      t.date :car_last_state_report

      t.timestamps
    end
  end
end
