class Shop < ApplicationRecord

  has_many :shop_genres, dependent: :destroy
  #Tagsテーブルから中間テーブルを介してArticleテーブルへの関連付け
  has_many :genres, through: :shop_genres, dependent: :destroy

  has_many :revues, :dependent => :destroy
  has_many :revued_users, through: :revues, source: :user

def revued_by?(user)
    revues.exists?(user_id: user.id)
end


end
