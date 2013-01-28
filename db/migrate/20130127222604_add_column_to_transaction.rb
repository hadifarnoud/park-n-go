class AddColumnToTransaction < ActiveRecord::Migration
  def up
  	addcolumn :prices, :base_price, :float
  	addcolumn :prices, :duration, :float
  	addcolumn :prices, :price_rule, :string
  	removecolumn :prices, :price_id
  end

  def down
  	addcolumn :prices, :price_id, :integer
  	removecolumn :prices, :base_price
  	removecolumn :prices, :duration
  	removecolumn :prices, :price_rule
  end
end
