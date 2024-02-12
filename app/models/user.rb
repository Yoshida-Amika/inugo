class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :image
  has_many :likes, dependent: :destroy
  has_many :niced_tweets, through: :nices, source: :tweet
  def already_niced?(tweet)
    self.nices.exists?(tweet_id: tweet.id)
  end
  
  # フォロー関係
  has_many :follows, class_name: "Follow", foreign_key: "follower_id", dependent: :destroy
  has_many :reverse_of_follows, class_name: "Follow", foreign_key: "followed_id", dependent: :destroy

  # 一覧画面
  has_many :user_followings, through: :follows, source: :user_followed
  has_many :user_followers, through: :reverse_of_follows, source: :user_follower
  
  # フォローしたときの処理
def user_follow(user_id)
  relationships.create(user_followed_id: user_id)
end
# フォローを外すときの処理
def user_unfollow(user_id)
  relationships.find_by(user_followed_id: user_id).destroy
end
# フォローしているか判定
def user_following?(user)
  followings.include?(user)
end

def get_image(width, height)
  unless image.attached?
  file_path = Rails.root.join('app/assets/images/no_image.jpg')
  image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  end
    image.variant(resize: "#{width}x#{height}").processed
  end

has_many :follows, :dependent => :destroy
has_many :nices, :dependent => :destroy
has_many :tweets , :dependent => :destroy

end
