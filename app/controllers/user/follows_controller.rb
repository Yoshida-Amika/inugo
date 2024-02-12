class User::FollowsController < ApplicationController

  def create
    current_user.user_follow(params[:user_id])
    redirect_to customer_other_path(@user)
  end
  # フォロー外すとき
  def destroy
    current_user.user_unfollow(params[:user_id])
    redirect_to customer_other_path(@user)  
  end
  # フォロー一覧
def index
    user = User.find(params[:user_id])
    @users = user.user_followings
end

def new
    @follow = Follows.all
end

end
