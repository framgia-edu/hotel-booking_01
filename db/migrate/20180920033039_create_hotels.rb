class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.text :description
      t.integer :user_id

      t.timestamps
    end

    add_index :hotels, :user_id
  end
end
