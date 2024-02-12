class User::UsersController < ApplicationController

  def other_users
    @user = User.find(params[:id])
    @tweets = @user.tweets
    @follow = Follow.new
  end

  def follows
    byebug
    current_user.user_follow(User.find(params[:id]))
    redirect_to other_path(id: params[:id])
  end

end
