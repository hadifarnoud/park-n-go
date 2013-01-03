class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :transaction_id
      t.integer :user_id
      t.integer :parking_id
      t.integer :service_id
      t.integer :branch_id
      t.string :device
      t.string :currency
      t.integer :point

      t.timestamps
    end
  end
end
