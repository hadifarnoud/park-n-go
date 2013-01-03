class Picture < ActiveRecord::Base
  attr_accessible :picture_id, :picture_path
  has_many users
end
