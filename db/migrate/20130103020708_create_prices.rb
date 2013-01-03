class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :price_id
      t.decimal :price_amount
      t.string :price_currency

      t.timestamps
    end
  end
end
