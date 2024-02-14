class Genre < ApplicationRecord
  
  has_many :shops, through: :recruit_genre_relations, dependent: :destroy
  
end
