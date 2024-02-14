class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|

      t.string :name
      t.string :image
      t.string :postal_code
      t.string :address
      t.string :telephone_number
      t.string :site_url
      t.string :lat
      t.string :lon
      t.timestamps
    end
  end
end
