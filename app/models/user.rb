class User < ActiveRecord::Base

  has_many  :posts, :dependent => :destroy
  has_many :comments, :dependent => :destroy

  validates_presence_of :username

  validates_uniqueness_of :username

  has_friendly_id :username

  has_attached_file :avatar,
                    :styles => { :medium => "300x300>",
                                 :thumb => "100x100>",
                                 :tiny => '32x32>' }

  # devise
  devise :authenticatable, :confirmable, :recoverable, :rememberable, :validatable

end

