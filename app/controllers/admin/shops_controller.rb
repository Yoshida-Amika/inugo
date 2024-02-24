class Admin::ShopsController < ApplicationController

def new
  @shop = Shop.new
end

def create
    @shop = Shop.new(shop_params)
    target_genre = @shop.genres.first
    @shop.save
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

def update
    @shop = Shop.find(params[:id])
    # 最初のジャンルだけ取り出す
    target_genre = @shop.genres.first
    @shop.update(shop_params)
    # ページ遷移分岐
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



def show
end

def edit
  @shop = Shop.find(params[:id])
end

def destroy
  @shop = Shop.find(params[:id])
  # 最初のジャンルだけ取り出す
  target_genre = @shop.genres.first
  @shop.destroy
  # ページ遷移分岐
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
      params.require(:shop).permit(:name, :site_url, :postal_code, :address, :telephone_number,:lat, :lon, genre_ids: [])
    end

    # genre_ids: []は新規追加のジャンルボタンに使用

end
