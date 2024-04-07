class Admin::UsersController < ApplicationController

def index
  @user = User.all
end

def show
  @user = User.find(params[:id])
  @tweets = @user.tweets
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  @user.update(users_params)
  redirect_to  admin_user_path
end



private

  def users_params
    params.require(:user).permit(:nickname, :email, :testimonials)
  end

  def tweet_params
    params.require(:tweet).permit(:image, :sub_sentence)
  end


end
