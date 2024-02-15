class Shop < ApplicationRecord
  
  has_many :shop_genres, dependent: :destroy
  #Tagsテーブルから中間テーブルを介してArticleテーブルへの関連付け
  has_many :genres, through: :shop_genres, dependent: :destroy
  
   
end
