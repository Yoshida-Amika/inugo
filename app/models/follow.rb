class Follow < ApplicationRecord

  belongs_to :user_follower, class_name: "User"
  belongs_to :user_followed, class_name: "User"

end
