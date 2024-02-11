class User::CustomersController < ApplicationController

# before_action :set_user, :only => [:follows, :nices, :tweets, :destroy]

def show
  @user = current_user
  @tweets = @user.tweets
end

def edit
    @user = User.find(params[:id])
end

def update
    @user = User.find(params[:id])
    @user.update(users_params)
    redirect_to customer_my_page_path
end

def confirmation
end

def destroy
     @user = User.find(params[:id])
     @user.destroy
     flash[:notice] = "ユーザーを削除しました。"
     redirect_to :root
end

def other_users
  @user = User.find(params[:id])
  @tweets = @user.tweets

end

private

def users_params
    params.require(:user).permit(:nickname, :email)
end

# def set_user
    # @user = User.find_by(:id => params[:id])
# end


end