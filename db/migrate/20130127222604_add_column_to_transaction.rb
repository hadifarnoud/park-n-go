class AddColumnToTransaction < ActiveRecord::Migration
  def up
  	add_column :prices, :base_price, :float
  	add_column :prices, :duration, :float
  	add_column :prices, :price_rule, :string
  	remove_column :prices, :price_id
  end

  def down
  	add_column :prices, :price_id, :integer
  	remove_column :prices, :base_price
  	remove_column :prices, :duration
  	remove_column :prices, :price_rule
  end
end