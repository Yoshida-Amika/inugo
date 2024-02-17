class User::RevuesController < ApplicationController

def create
  @revues = current_user.revues.create(shop_id: params[:shop_id])
  @revues.save
  redirect_back(fallback_location:  other_path(@revue.user))
end

def destroy
  @revue = Revue.find_by(shop_id: params[:shop_id], user_id: current_user.id)
  @revue.destroy
  redirect_back(fallback_location:  other_path(@revue.user))
end

private

  def revue_params
    params.require(:revue).permit(:site_url, :name, :postal_code, :address, :telephone_number)
  end


end
