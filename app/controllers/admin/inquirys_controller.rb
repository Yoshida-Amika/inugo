class Admin::InquirysController < ApplicationController

def index
  @user = User.find(params[:id])
  @inquiry = Inquiry.all
end

private

  def users_params
    params.require(:user).permit(:nickname, :email)
  end

end
