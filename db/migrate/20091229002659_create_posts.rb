class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.belongs_to :user
      t.string :title
      t.text :body
      t.string :slug
      t.boolean :published

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
