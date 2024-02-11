class User::NicesController < ApplicationController

  def index
    @nices = Nice.all
    @nice = Nice.where(id: params[:id])
    @nice = Nice.new
    @tweets = Tweet.where.not(user_id: current_user.id)

  end


def create
  @nice = current_user.nices.create(tweet_id: params[:tweet_id])
  @nice.save!
  redirect_back(fallback_location:  customer_other_users_path)
end

def destroy
  @nice = Nice.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
  @nice.destroy
  redirect_back(fallback_location:  customer_other_users_path)
end

private

  def nice_params
    params.require(:nice).permit(:nickname, :image, :sub_sentence)
  end




end
