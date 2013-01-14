class Address < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :city, :country, :county, :postcode
  belongs_to :users
  # validates_presence_of :user

  #has_many :address, :class_name => 'Address', :foreign_key => :owner_id interesting syntax

end
