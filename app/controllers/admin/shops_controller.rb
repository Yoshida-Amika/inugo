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
    @item.update(item_params)
    redirect_to admin_shop_path
end



def show
end

def edit
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

def destroy
  @shop = Shop.find(params[:id])
  @shop.destroy
  redirect_back(fallback_location: root_path)
end

private

    def shop_params
      params.require(:shop).permit(:name, :site_url, :postal_code, :address, :telephone_number, genre_ids: [])
    end

end
