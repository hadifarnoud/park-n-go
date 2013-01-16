class AddColumnToFeedback < ActiveRecord::Migration
  def change
    add_column :feedbacks, :booking_id, :integer
  end
end
