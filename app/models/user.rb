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

  def already_revued?(shop)
    self.revues.exists?(shop_id: shop.id)
  end

  # フォローした人を作る
  has_many :follows, class_name: "Follow", foreign_key: "user_follower_id", dependent: :destroy
  # フォローした人の一覧
  has_many :user_followings, through: :follows, source: :user_followed

  #フォローされた人の中間テーブル
  has_many :reverse_of_follows, class_name: "Follow", foreign_key: "user_followed_id", dependent: :destroy
  #フォローされた人に一覧
  has_many :user_followers, through: :reverse_of_follows, source: :user_follower




  # フォローしたときの処理
  def user_follow(user)
    #byebug
    follows.find_or_create_by(user_followed_id: user.id)
  end

  # フォローを外すときの処理
  def user_unfollow(user)
    follows.find_by(user_followed_id: user.id)&.destroy
  end

  # フォローしているか判定
  def user_following?(user)
    user_followings.include?(user)
  end

def get_image(width, height)
  unless image.attached?
  file_path = Rails.root.join('app/assets/images/no_image.jpg')
  image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  end
    image.variant(resize: "#{width}x#{height}").processed
  end

#has_many :follows, :dependent => :destroy
has_many :nices, :dependent => :destroy
has_many :tweets , :dependent => :destroy

end
