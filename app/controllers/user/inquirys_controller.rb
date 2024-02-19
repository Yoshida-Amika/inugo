class User::InquirysController < ApplicationController

def index
  @inquiry = Inquiry.new
  render :action => 'index'
end

def create
  @inquiry = Inquiry.new(inquiry_params)
  if @inquiry.save #保存処理
      redirect_to thanks_path
  else
      render :index
  end
end


def thanks
end

private

  def inquiry_params
    params.require(:inquiry).permit(:opinion)
  end

end
