class Admin::TweetsController < ApplicationController

  def destroy
     @tweet = Tweet.find(params[:id])
     @tweet.destroy
     redirect_to admin_user_path(@tweet.user)
  end

end
