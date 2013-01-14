class AddColumnToAddress < ActiveRecord::Migration
  def up
  	add_column :addresses, :user_id, :integer
  end

  def down
  	remove_column :addresses, :user_id
  end

end
