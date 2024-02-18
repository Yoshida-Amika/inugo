class Admin::ShopsController < ApplicationController

def new
  @shop = Shop.new
end

def create
    @shop = Shop.new(shop_params)
    @shop.save
    redirect_back(fallback_location: root_path)
end

def update
    @shop = Shop.find(params[:id])
    @shop.update(shop_params)
    # 前のページに戻す
    redirect_to params[:shop][:before_url]
end



def show
end

def edit
  @shop = Shop.find(params[:id])
end

def destroy
  @shop = Shop.find(params[:id])
  target_genre = @shop.genres.first
  @shop.destroy
  
  if target_genre.name == "宿泊施設"
    redirect_to admin_shops_accommodation_path
  elsif target_genre.name == "ショッピングモール"
    redirect_to admin_shops_shopping_mall_path
  elsif target_genre.name == "アクティビティ"
    redirect_to admin_shops_activity_path
  else
    redirect_to root_path
  end
end

def accommodation
  target_genre = Genre.find_by(name: "宿泊施設")
  @shops = target_genre.shops
end

def shopping_mall
  target_genre = Genre.find_by(name: "ショッピングモール")
  @shops = target_genre.shops
end

def activity
  target_genre = Genre.find_by(name: "アクティビティ")
  @shops = target_genre.shops
end



private

    def shop_params
      params.require(:shop).permit(:name, :site_url, :postal_code, :address, :telephone_number, genre_ids: [])
    end

end
