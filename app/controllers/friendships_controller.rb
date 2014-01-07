class FriendshipsController < ApplicationController

  def create
    sleep(0.5)

    @friendship = Friendship.new(params[:friendship])
    @friendship.out_friend_id = current_user.id
    @friendship.save!

    redirect_to users_url
  end

  def special_delete
    sleep(0.5)
    Friendship.get_friendship(params[:out_friend_id], params[:in_friend_id]).destroy
    head :ok
  end

end
