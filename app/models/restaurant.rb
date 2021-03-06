class Restaurant < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone, :website, :user_id

  has_many :dishes 
  has_many :pictures

  belongs_to :users

  validates_uniqueness_of :name

  def to_param
  	"#{id}-#{name.parameterize}"
  end
end
