class User::UsersController < ApplicationController

  def other_users
    @user = User.find(params[:id])
    @tweets = @user.tweets
    @follow = Follow.new
  end

  def followings
    @user = User.find(params[:id])
    @users = @user.user_followings
  end

end
