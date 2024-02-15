class Genre < ApplicationRecord
  
  
  has_many :shop_genres, dependent: :destroy
  #Tagsテーブルから中間テーブルを介してArticleテーブルへの関連付け
  has_many :shops, through: :shop_genres, dependent: :destroy
  
  #has_many :shops, through: :recruit_genre_relations, dependent: :destroy
  
end
