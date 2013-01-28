class AddColumnToService < ActiveRecord::Migration
  def change
    add_column :prices, :service_id, :integer
    add_column :prices, :parking_id, :integer
  end
end
