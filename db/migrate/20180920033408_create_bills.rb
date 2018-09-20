class CreateBills < ActiveRecord::Migration[5.2]
  def change
    create_table :bills do |t|
      t.integer :status
      t.datetime :checkin_at
      t.datetime :checkout_at
      t.text :description
      t.string :customer_name
      t.string :customer_phone
      t.string :customer_email
      t.boolean :customer_gender
      t.integer :room_detail_id
      t.integer :room_number
      t.integer :user_id

      t.timestamps
    end

    add_index :bills, :room_detail_id
    add_index :bills, :user_id
  end
end
