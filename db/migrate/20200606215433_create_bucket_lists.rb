class CreateBucketLists < ActiveRecord::Migration
  def change
    create_table :bucket_lists do |t|
      t.integer :user_id
      t.string :title

      t.timestamps null: false
    end
  end
end
