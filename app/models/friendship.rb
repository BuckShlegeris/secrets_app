class Friendship < ActiveRecord::Base
  attr_accessible :in_friend_id, :out_friend_id

  validates :in_friend_id, :out_friend_id, :presence => true

  belongs_to :in_friend, :class_name => "User"
  belongs_to :out_friend, :class_name => "User"

  def self.can_friend?(out_friend_id, in_friend_id)
    !Friendship.exists?(:out_friend_id => out_friend_id,
                        :in_friend_id => in_friend_id) &&
      out_friend_id != in_friend_id
  end

  def self.get_friendship(outf, inf)
    Friendship.find_by_out_friend_id_and_in_friend_id(outf, inf)
  end
end
