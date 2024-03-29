class User::TweetsController < ApplicationController

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    @tweet.save
    redirect_to customer_my_page_path(@tweet.id)
  end

  def everyone_tweet
    @user = User.find(current_user.id)
    @tweets = Tweet.where.not(user_id: current_user.id)
    @nice = Nice.new
    @nice_count = Nice.where(tweet_id: params[:tweet_id]).count
  end

  def edit
     @tweet = Tweet.find(params[:id])
  end

  def update
     @tweet = Tweet.find(params[:id])
     @tweet.update(tweet_params)
     redirect_to customer_my_page_path
  end


  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to customer_my_page_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image, :sub_sentence)
  end


end
