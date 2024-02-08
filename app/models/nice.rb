class Nice < ApplicationRecord

   belongs_to :user
   belongs_to :tweet

   validates :user_id, uniqueness: {scope: :tweet_id}
   validates_uniqueness_of :tweet_id, scope: :user_id
end
