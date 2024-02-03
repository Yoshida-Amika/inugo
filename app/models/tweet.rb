class Tweet < ApplicationRecord

has_one_attached :image

def get_image(width, height)
  image.variant(resize: "#{width}x#{height}").processed
end


end
