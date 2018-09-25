class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|

      t.string :user_name
      t.string :password
      t.string :email
      t.string :name
      t.string :address
      t.string :phone
      t.integer :user_type, default: 1
      t.string :password_digest
      t.string :remember_digest
      t.boolean :activated, default: false
      t.datetime :activated_at
      t.string :reset_digest
      t.datetime :reset_sent_at

      t.timestamps
    end
  end
end
