class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      
      t.integer :user_id
      t.integer :image
      t.string :sub_sentence

      t.timestamps
    end
  end
end
