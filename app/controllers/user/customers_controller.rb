class User::CustomersController < ApplicationController

# before_action :set_user, :only => [:follows, :nices, :tweets, :destroy]

def show
  @user = current_user
  @tweets = @user.tweets
end

def edit
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_back(fallback_location: root_url)
    end
    @user = User.find(params[:id])
end

def update
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_back(fallback_location: root_url)
    end
    @user = User.find(params[:id])
    @user.update(users_params)
    redirect_to customer_my_page_path
end

def confirmation
end

def destroy
    user = User.find(params[:id])
    unless user.id == current_user.id
      redirect_back(fallback_location: root_url)
    end
     @user = User.find(params[:id])
     @user.destroy
     redirect_to root_path, notice: 'ユーザーを削除しました。'
end

private

  def users_params
    params.require(:user).permit(:nickname, :email)
  end

end