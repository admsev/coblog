class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.date :dob
      t.boolean :sex
      t.string :url

      t.authenticatable
      t.confirmable
      t.recoverable
      t.rememberable
      t.timestamps

      t.timestamps
    end

    add_index :users, :email
    add_index :users, :confirmation_token    # for confirmable
    add_index :users, :reset_password_token  # for recoverable
  end

  def self.down
    drop_table :users
  end
end

