class Order < ActiveRecord::Base
  attr_accessible :event_address, :event_datetime, :user_id, :quantities_attributes

  belongs_to :user

  has_many :quantities
  has_many :dishes, :through => :quantities

  accepts_nested_attributes_for :quantities,
  	:reject_if => :all_blank,
  	:allow_destroy => false
  accepts_nested_attributes_for :dishes

  validates_presence_of :event_address

  validate :quantities, :length => { :minimum => 1}
  #TODO validate the address

  def require_quantities
  	unless self.dishes.count > 0
  		errors.add(:order, "must have dishes")
  	end
  end

end
