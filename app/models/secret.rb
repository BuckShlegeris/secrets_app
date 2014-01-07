class Secret < ActiveRecord::Base
  attr_accessible :author_id, :recipient_id, :title

  belongs_to :author, :class_name => "User"
  belongs_to :recipient, :class_name => "User"

  has_many :taggings
  has_many :tags, :through => :taggings, :source => :tag

  validates :author_id, :recipient_id, :title, :presence => true
end
