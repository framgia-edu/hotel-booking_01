class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :image
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
    
    add_index :posts, :user_id
    add_index :posts, :category_id
  end
end
