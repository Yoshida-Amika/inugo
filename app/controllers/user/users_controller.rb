class User::UsersController < ApplicationController

  #投稿者
  def other_users
    @user = User.find(params[:id])
    @tweets = @user.tweets
    @follow = Follow.new
    @users = @user.user_followings
  end


  def followings
    @user = User.find(params[:id])
    @users = @user.user_followings
  end

end
