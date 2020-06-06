class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :bucket_list_id
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
