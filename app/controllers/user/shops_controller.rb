class User::ShopsController < ApplicationController

  def accommodation
    @shop = Shop.select("name", "id")
        shop_search = params[:shop_search]
        if shop_search != nil
            @genre = Shop.find_by(id: shop_search).genre
        end

  end

  def show
  end

end
