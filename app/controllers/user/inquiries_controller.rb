class User::InquiriesController < ApplicationController

def index
  @inquiry = Inquiry.new

end

def create
  @inquiry = Inquiry.new(inquiry_params)
  @inquiry.save #保存処理
  redirect_to thanks_path
end

def thanks
end

private

  def inquiry_params
    params.require(:inquiry).permit(:opinion).merge(user_id: current_user.id)
    # mergeは追加したい値を書く
  end

end
