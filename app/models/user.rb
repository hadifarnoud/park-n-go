class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :picture_id, :vat_number, :telephone, :mobile, :booking_id, :address_id, :addresses_attributes, :transactions_attributes, :cars_attributes
  has_many :transactions
  has_many :cars
  belongs_to :picture
  belongs_to :address
  belongs_to :booking
  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :transactions
  accepts_nested_attributes_for :cars

  validates :mobile, :presence => true, :uniqueness => true
end
