class Picture < ActiveRecord::Base
  attr_accessible :picture_path
  has_many :users
end
