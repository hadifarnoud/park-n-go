class AddTypeToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :type, :integer
  end
end
