class User::CustomersController < ApplicationController

# before_action :set_user, :only => [:follows, :nices, :tweets, :destroy]

def show
  @user = current_user
  
  
end

def edit
end

def confirmation
end

def destroy
    # @user = User.find(params[:id])
    # @user.destroy
    # flash[:notice] = "ユーザーを削除しました。"
    # redirect_to :root
end

private
# def set_user
    # @user = User.find_by(:id => params[:id])
# end


end
