class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :name
      t.text :image
      t.integer :hotel_id

      t.timestamps
    end

    add_index :images, :hotel_id
  end
end
