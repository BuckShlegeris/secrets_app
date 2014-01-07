class Tagging < ActiveRecord::Base
  attr_accessible :tag_id, :secret_id

  validates :tag_id, :secret_id, :presence => true

  belongs_to :tag
  belongs_to :secret

end
