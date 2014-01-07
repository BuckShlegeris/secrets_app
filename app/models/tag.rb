class Tag < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true

  has_many :taggings
  has_many :secrets, :through => :taggings, :source => :secret
end
