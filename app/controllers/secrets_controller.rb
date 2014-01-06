class SecretsController < ApplicationController

  def new
    @user = User.find(params[:user_id])

    render :new
  end

  def create
    @secret = Secret.new(params[:secret])
    @secret.author_id = current_user.id
    @secret.save!
    redirect_to @secret.recipient
  end



end
