class Post < ActiveRecord::Base
  belongs_to :user, :counter_cache => true
  attr_protected :user_id

  has_many  :comments

  default_scope :order => "created_at desc"
end

