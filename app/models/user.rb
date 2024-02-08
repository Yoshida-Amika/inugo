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
