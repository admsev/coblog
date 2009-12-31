class Comment < ActiveRecord::Base
  belongs_to :user, :counter_cache => true
  belongs_to :post, :counter_cache => true

  attr_protected :user_id
  validates_presence_of :body
end

