class Admin::InquiriesController < ApplicationController

def index
  @user = current_user
  @inquiry = Inquiry.all
end

def destroy
  @inquiry = Inquiry.find(params[:id])
  @inquiry.destroy
  redirect_to admin_inquiries_path
end

private

  def users_params
    params.require(:user).permit(:nickname, :email)
  end

  def inquiries_params
    params.require(:inquiry).permit(:opinion)
  end

end
