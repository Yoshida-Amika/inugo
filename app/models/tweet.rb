class Tweet < ApplicationRecord

has_one_attached :image
 belongs_to :user


 def get_image(width, height)
  unless image.attached?
  file_path = Rails.root.join('app/assets/images/no_image.jpg')
  image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
  end
    image.variant(resize: "#{width}x#{height}").processed
  end

  has_many :nices, :dependent => :destroy
  has_many :niced_users, through: :nices, source: :user

def niced_by?(user)
    nices.exists?(user_id: user.id)
 end



end
