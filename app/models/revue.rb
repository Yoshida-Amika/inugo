class Revue < ApplicationRecord

   belongs_to :user
   belongs_to:shop

   validates :user_id, uniqueness: {scope: :shop_id}
   validates_uniqueness_of :shop_id, scope: :user_id
end
