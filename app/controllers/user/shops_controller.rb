class User::ShopsController < ApplicationController

  def accommodation
    target_genre = Genre.find_by(name: "宿泊施設")
    @shops = target_genre.shops
    @revue = Revue.new
  end

  def shopping_mall
    target_genre = Genre.find_by(name: "ショッピングモール")
    @shops = target_genre.shops
    @revue = Revue.new
  end

  def activity
    target_genre = Genre.find_by(name: "アクティビティ")
    @shops = target_genre.shops
    @revue = Revue.new
  end

  def show
  end

end
