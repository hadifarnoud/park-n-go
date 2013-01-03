class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :picture_id
      t.string :picture_path

      t.timestamps
    end
  end
end
