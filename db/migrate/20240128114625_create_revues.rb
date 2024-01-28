class CreateRevues < ActiveRecord::Migration[6.1]
  def change
    create_table :revues do |t|

      t.integer :user_id
      t.integer :shop_id
      t.integer :star
      t.timestamps
    end
  end
end
