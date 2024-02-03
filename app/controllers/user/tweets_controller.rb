class User::TweetsController < ApplicationController

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    redirect_to customer_my_page_path(@tweet.id)
  end

  def edit
  end

  def destroy
  end

  private

  def tweet_params
    params.require(:tweet).permit(:image, :sub_sentence)
  end


end
