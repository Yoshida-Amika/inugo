class CreateShopGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_genres do |t|
      
      t.integer :shop_id
      t.integer :genre_id
      t.timestamps
    end
  end
end
