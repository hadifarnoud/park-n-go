class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :parkings, :parking_price_id, :price_id
  end
end
