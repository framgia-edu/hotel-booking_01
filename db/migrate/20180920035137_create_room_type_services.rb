class CreateRoomTypeServices < ActiveRecord::Migration[5.2]
  def change
    create_table :room_type_services do |t|
      t.integer :priceable_id
      t.string :priceable_type
      t.text :desciption
      t.string :name
      t.float :price

      t.timestamps
    end

    add_index :room_type_services, :priceable_id
  end
end
