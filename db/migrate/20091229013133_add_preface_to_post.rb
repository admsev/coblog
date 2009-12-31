class AddPrefaceToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :preface, :text
  end

  def self.down
    remove_column :posts, :preface
  end
end
