class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :picture_id, :vat_number, :telephone, :mobile, :booking_id, :addresses_attributes, :transactions_attributes, :cars_attributes
  has_many :transactions
  has_many :cars
  has_many :addresses, :dependent => :destroy
  belongs_to :picture
  has_many :bookings
  accepts_nested_attributes_for :addresses, allow_destroy: true
  accepts_nested_attributes_for :transactions
  accepts_nested_attributes_for :cars

  before_create :default_role

  def default_role
    self.role_ids = 5
  end

  def with_address
    self.addresses.build if self.addresses.empty?
    self
  end

  validates :mobile, :presence => true, :uniqueness => true
end
