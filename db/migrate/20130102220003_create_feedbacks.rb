class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.integer :feedback_id
      t.string :comment
      t.integer :raiting

      t.timestamps
    end
  end
end
