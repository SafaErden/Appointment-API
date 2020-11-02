class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :password_digest, null: false, default: ""
      t.string :username, null: false, default: ""

      t.timestamps null: false
    end

    add_index :users, :username,                unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
