class User::InquirysController < ApplicationController

def index
  @inquiry = Inquiry.new
end

def create
  @inquiry = Inquiry.new(inquiry_params)
  @inquiry.save
  redirect_to thanks_path
end


def thanks
end

private

  def inquiry_params
    params.require(:inquiry).permit(:opinion)
  end

end
