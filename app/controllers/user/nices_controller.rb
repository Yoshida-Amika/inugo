class User::NicesController < ApplicationController

  def index
    @nices = current_user.nices
    @user = User.find(current_user.id)
    @nice = Nice.new
  end


def create
  @nice = current_user.nices.create(tweet_id: params[:tweet_id])
  @nice.save
  redirect_back(fallback_location:  other_path(@nice.user))
end

def destroy
  @nice = Nice.find_by(tweet_id: params[:tweet_id], user_id: current_user.id)
  @nice.destroy
  redirect_back(fallback_location:  other_path(@nice.user))
end



private

  def nice_params
    params.require(:nice).permit(:nickname, :image, :sub_sentence)
  end




end
