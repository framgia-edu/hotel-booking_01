class CreateRoomDetailServices < ActiveRecord::Migration[5.2]
  def change
    create_table :room_detail_services do |t|
      t.integer :room_detail_id
      t.integer :service_id

      t.timestamps
    end

    add_index :room_detail_services, :room_detail_id
    add_index :room_detail_services, :service_id
  end
end
