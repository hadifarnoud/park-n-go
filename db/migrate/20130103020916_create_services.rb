class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer :service_id
      t.string :service_name
      t.integer :price_id

      t.timestamps
    end
  end
end
