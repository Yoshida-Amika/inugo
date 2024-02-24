class Shop < ApplicationRecord

  has_many :shop_genres, dependent: :destroy
  #Tagsテーブルから中間テーブルを介してArticleテーブルへの関連付け
  has_many :genres, through: :shop_genres, dependent: :destroy

  has_many :revues, :dependent => :destroy
  has_many :revued_users, through: :revues, source: :user

def revued_by?(user)
    revues.exists?(user_id: user.id)
end

# 地名で緯度経度を変換する
def geocode_full_address
    coords = Geocoder.coordinates(
      self.prefecture + self.city + self.address # 県名 + 市町村名 + 丁目番地
    )
    self.lat = coords[0]
    self.lon = coords[1]
end

geocoded_by :address, latitude: :lat, longitude: :lon
after_validation :geocode


end
