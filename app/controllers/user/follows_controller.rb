class User::FollowsController < ApplicationController

  def create
    user = User.find(params[:user_id])
    current_user.user_follow(user)
    redirect_back(fallback_location: root_url)
  end

  # フォロー外すとき
  def destroy
    user = User.find(params[:user_id])
    current_user.user_unfollow(user)
    redirect_back(fallback_location: root_url)
  end
  
  # フォロー一覧
  #def index
  #  user = User.find(params[:id])
  #  @users = user.user_followings
  #end

  #def new
  #  @follow = Follows.all
  #end
end
