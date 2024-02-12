class CreateFollows < ActiveRecord::Migration[6.1]
  def change
    create_table :follows do |t|
      # フォローしたユーザー
      t.integer :user_followr_id
      # フォローされた
      t.integer :user_followed_id
      
      t.integer :user_id
      t.timestamps
    end
  end
end
