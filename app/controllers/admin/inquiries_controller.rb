class Admin::InquiriesController < ApplicationController

def index
  @user = current_user
  @inquiry = Inquiry.all
end

private

  def users_params
    params.require(:user).permit(:nickname, :email)
  end

end
