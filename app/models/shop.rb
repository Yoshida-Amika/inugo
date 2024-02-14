class Shop < ApplicationRecord
  
   belongs_to :genre
   
    has_many :genres, through: :recruit_genre_relations, dependent: :destroy
   
  
   
end
