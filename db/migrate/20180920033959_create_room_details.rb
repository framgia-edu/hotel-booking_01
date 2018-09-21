class CreateRoomDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :room_details do |t|
      t.integer :hotel_id
      t.text :image
      t.integer :arceage
      t.integer :room_number
      t.text :description

      t.timestamps
    end

    add_index :room_details, :hotel_id
  end
end
