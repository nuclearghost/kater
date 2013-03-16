class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :dishes

  validates_uniqueness_of :name

end
