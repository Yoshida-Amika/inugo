class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|

      t.integer :user_id
      t.text :opinion
      t.timestamps
    end
  end
end
