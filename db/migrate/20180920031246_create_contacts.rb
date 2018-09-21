class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.text :title
      t.text :content
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.integer :user_id

      t.timestamps
    end

    add_index :contacts, :user_id
  end
end
