class User::FollowsController < ApplicationController

  
  
  # フォロー外すとき
  def destroy
    current_user.user_unfollow(params[:user_id])
    redirect_to customer_other_path(@user)
  end
  
  # フォロー一覧
def index
    user = User.find(params[:id])
    @users = user.user_followings
end

def new
    @follow = Follows.all
end

private

def users_params
    params.require(:user).permit(:nickname)
end


end
